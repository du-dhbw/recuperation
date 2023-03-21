package myCar;
@generated("statemachine", "000000")
type CCFStateStatemachineStates is enum {
	PassThrough,
	Control
};

class CCFState {
	@set
	private real pow;
	@set
	private real bra;
	@get
	private real pw;
	@get
	private real br;
	@get
	private boolean on;
	@set
	private boolean act;
	@set
	private real ctrl;

	@generated("statemachine", "000000")
	public void cCFStateStatemachineTrigger() triggers CCFStateStatemachine;

	@generated("statemachine", "c2c3b37b")
	statemachine CCFStateStatemachine using CCFStateStatemachineStates {
		start PassThrough;

		state PassThrough {
			static {
				pw = pow;
				br = bra;
			}
			transition act to Control {
				on = true;
			};
		}

		state Control {
			static {
				if (ctrl > 0.0) {
					if (pow > 0.0) {
						pw = pow;
					} else {
						pw = ctrl;
					}
					br = 0.0;
				} else {
					pw = 0.0;
					br = -ctrl;
				}
			}
			transition bra > 0.0 to PassThrough {
				on = false;
			};
		}
	}
}