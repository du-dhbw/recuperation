package myCar;
import resources.a;
import resources.m;
import resources.Wh;
import resources.kg;

class Battery
using BatteryRepresentation {
	Wh battery = 1000.0[Wh];
	characteristic kg weight = 1500.0[kg];

	@generated("blockdiagram", "d03035d6")
	public Wh getBattery(a in momentum, m in ds) {
		battery = (battery - ((weight * momentum) * ds)); // Main/getBattery 1
		return battery; // Main/getBattery 2
	}
	representation BatteryRepresentation {
		represent battery using {
			range = 0.0[Wh] .. 1000.0[Wh];
		};
	}
}