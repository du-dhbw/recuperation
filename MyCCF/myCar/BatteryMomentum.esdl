package myCar;
import resources.a;

class BatteryMomentum {
	@set
	private real battery = 0.0;
	@get
	private a momentum = 0.0[a];
	@set
	private a accelMomentum = 0.0[a];
	@set
	private a recupMomentum = 0.0[a];
	@get
	boolean empty = false;

	@generated("statemachine", "000000")
	public void bmsTrigger() triggers BatteryMomentumStatemachine;

	@generated("statemachine", "1664f575")
	statemachine BatteryMomentumStatemachine using BatteryMomentumStatemachineStates {
		start Full;

		state Full {
			static {
				momentum = accelMomentum;
			}
			transition battery < 1.0 to Operational;
		}

		state Empty {
			static {
				momentum = recupMomentum + accelMomentum;
			}
			transition battery > 0.0 to Operational {
				empty = false;
			};
		}

		state Operational {
			static {
				momentum = accelMomentum + recupMomentum;
			}
			transition battery == 0.0 to Empty {
				empty = true;
			};
			transition battery == 1.0 to Full;
		}
	}
}
@generated("statemachine", "000000")
type BatteryMomentumStatemachineStates is enum {
	Full,
	Empty,
	Operational
};