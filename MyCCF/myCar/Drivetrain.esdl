package myCar;
import resources.a;
import resources.curve_recup_a;
import resources.kmh;
import resources.m;
import resources.map_real_kmh;

class Drivetrain {
	characteristic curve_recup_a RecuperationAccel[2] = {{0.0[kmh], 160.0[kmh]}, {0.0[a], -0.04[a]}};
	characteristic map_real_kmh EngineMomentum[6][6] = {{0.0, 5.0, 20.0, 60.126582278481, 80.0, 100.0}, {0.0[kmh], 30.0[kmh], 60.0[kmh], 90.0[kmh], 150.0[kmh], 200.0[kmh]}, {{0.0[a], 0.0[a], 0.0[a], 0.0[a], 0.0[a], 0.0[a]}, {0.0[a], 0.0[a], 0.0[a], 0.0[a], 0.0[a], 0.0[a]}, {0.849999999999999[a], 0.6000000000000001[a], 0.30000000000000004[a], 0.0[a], 0.0[a], 0.0[a]}, {3.1500000000000004[a], 2.3499999999999988[a], 1.5500000000000012[a], 0.8000000000000009[a], 0.399999999999999[a], 0.0[a]}, {4.5[a], 3.5999999999999996[a], 2.7[a], 1.5[a], 0.8999999999999999[a], 0.0[a]}, {5.0[a], 4.5[a], 3.8000000000000096[a], 2.799999999999999[a], 1.899999999999999[a], 0.0[a]}}};
	Battery Battery_inst;
	a momentum = 0.0[a];
	BatteryMomentum BM_inst;
	@get
	boolean batteryEmpty = false;
	CrawlingManager CM_inst;

	@generated("blockdiagram", "42f61ee5")
	public a drive(real in powerCtrl, real in recupCtrl, kmh in v, m in ds) {
		CM_inst.v = v; // Main/drive 1
		CM_inst.batteryEmpty = batteryEmpty; // Main/drive 2
		CM_inst.crawlingManagerStatemachineTrigger(); // Main/drive 3
		BM_inst.recupMomentum = (RecuperationAccel.getAt(v) * recupCtrl); // Main/drive 4
		BM_inst.accelMomentum = EngineMomentum.getAt(CM_inst.power, v); // Main/drive 5
		BM_inst.battery = Battery_inst.getBattery(momentum, ds); // Main/drive 6
		BM_inst.bmsTrigger(); // Main/drive 7
		momentum = BM_inst.momentum; // Main/drive 8
		batteryEmpty = BM_inst.empty; // Main/drive 9
		CM_inst.driverPower = powerCtrl; // Main/drive 10
		return momentum; // Main/drive 11
	}
}