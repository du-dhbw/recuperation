package myCar;
import resources.a;
import resources.m;
import resources.Wh;
import resources.kg;

class Battery
using BatteryRepresentation {
	Wh battery = 1000.0[Wh];
	characteristic kg weight = 1500.0[kg];
	const Wh capacity = 1000.0[Wh];

	@generated("blockdiagram", "5787d467")
	public real getBattery(a in momentum, m in ds) {
		battery = (battery - ((weight * momentum) * ds)); // Main/getBattery 1
		return(battery / capacity); // Main/getBattery 2
	}
	representation BatteryRepresentation {
		represent battery using {
			range = 0.0[Wh] .. 1000.0[Wh];
		};
	}
}