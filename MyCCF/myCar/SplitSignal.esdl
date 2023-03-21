package myCar;
import SystemLib.Comparators.GreaterZero;

class SplitSignal {
	@get
	real plus;
	@get
	real minus;
	GreaterZero GZ;

	@generated("blockdiagram", "b3d8a1aa")
	public void calc(real in arg) {
		if (GZ.value(arg)) {
			plus = arg; // Main/calc 1/if-then 1
			minus = 0.0; // Main/calc 1/if-then 2
		} else {
			minus = (-arg); // Main/calc 1/if-else 1
			plus = 0.0; // Main/calc 1/if-else 2
		} // Main/calc 1
	}
}