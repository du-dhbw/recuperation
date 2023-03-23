package myCar;
import resources.km;
import resources.kmh;
import resources.m;

class CrawlingManager {
	@set
	private boolean batteryEmpty = false;
	@set
	private km odometer = 0.0[km];
	@set
	private kmh v = 0.0[kmh];
	@get
	private real power = 0.0;
	@set
	private real driverPower = 0.0;
	m crawlingStartOdometer = 0.0[m];
	characteristic kmh crawlingTargetSpeed = 10.0[kmh];
	characteristic m crawlingTargetDistance = 500.0[m];
	characteristic real crawlingPower = 5.5;

	@generated("statemachine", "000000")
	public void crawlingManagerStatemachineTrigger() triggers CrawlingManagerStatemachine;

	@generated("statemachine", "3dc562ac")
	statemachine CrawlingManagerStatemachine using CrawlingManagerStatemachineStates {
		start NormalOperation;

		state NormalOperation {
			static {
				power = driverPower;
			}
			transition batteryEmpty to Waiting;
		}

		state Waiting {
			static {
				power = 0.0;
			}
			transition !batteryEmpty to NormalOperation;
			transition v <= crawlingTargetSpeed to Crawling;
		}

		state Crawling {
			static {
				power = crawlingPower;
			}
			transition !batteryEmpty to Waiting;
			transition crawlingStartOdometer + crawlingTargetDistance <= odometer to ReallyEmpty;
		}

		state ReallyEmpty {
			static {
				power = 0.0;
			}
			transition !batteryEmpty to Crawling;
		}
	}
}
@generated("statemachine", "000000")
type CrawlingManagerStatemachineStates is enum {
	NormalOperation,
	Waiting,
	Crawling,
	ReallyEmpty
};