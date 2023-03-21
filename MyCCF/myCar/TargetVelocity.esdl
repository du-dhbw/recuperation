package myCar;
import resources.kmh;

class TargetVelocity {
	kmh v;
	characteristic kmh dv = 5.0[kmh];
	characteristic kmh mn = 30.0[kmh];
	characteristic kmh mx = 100.0[kmh];

	@generated("blockdiagram", "31a01fee")
	public void inc() {
		v = (v + dv); // Main/inc 1
	}

	@generated("blockdiagram", "daacba99")
	public void dec() {
		v = (v - dv); // Main/dec 1
	}

	@generated("blockdiagram", "eaa76d6b")
	public kmh velocity() {
		v = min(max(v, mn), mx); // Main/velocity 1
		return v; // Main/velocity 2
	}

	@generated("blockdiagram", "944f884c")
	public void reset(kmh in arg) {
		v = arg; // Main/reset 1
	}
}