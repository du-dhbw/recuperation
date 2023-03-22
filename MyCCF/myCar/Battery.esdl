package myCar;
import resources.a;
import resources.m;
import resources.Wh;

class Battery
using BatteryRepresentation {
	Wh battery = 1000.0[Wh];

	@generated("blockdiagram", "a1e83b55")
	public Wh getBattery(a in momentum, m in ds) {
		battery = (battery - ((myCar.weight * momentum) * ds)); // Main/getBattery 1
		return battery; // Main/getBattery 2
	}
	representation BatteryRepresentation {
		represent battery using {
			range = 0.0[Wh] .. 1000.0[Wh];
		};
	}
}