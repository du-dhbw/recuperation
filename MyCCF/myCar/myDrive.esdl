package myCar;
import resources.curve_kmh;
import resources.curve_m;
import resources.curve_real_a;
import resources.m;
import resources.s;
import resources.kmh;
import resources.g;
import resources.a;

class myDrive {
	characteristic curve_real_a BrakeMomentuC[6] = {{0.0, 1.0, 40.0, 60.0, 80.0, 100.0}, {0.0[a], 0.0[a], -1.0[a], -2.0[a], -3.0[a], -4.0[a]}};
	characteristic curve_kmh AirFriction[6] = {{0.0[kmh], 30.0[kmh], 60.0[kmh], 90.0[kmh], 120.0[kmh], 150.0[kmh]}, {0.0[a], -0.1[a], -0.2[a], -0.4[a], -0.8[a], -1.6[a]}};
	characteristic curve_m Landscape[20] = {{0.0[m], 100.0[m], 145.569620253165[m], 202.53164556962025[m], 221.51898734177215[m], 240.0[m], 259.49367088607596[m], 300.0[m], 350.0[m], 400.0[m], 450.0[m], 500.0[m], 600.0[m], 700.0[m], 750.0[m], 800.0[m], 820.0[m], 850.0[m], 900.0[m], 1000.0[m]}, {0.0[m], 0.0[m], 4.0[m], 7.125[m], 10.375[m], 10.75[m], 10.5[m], 9.0[m], 5.375[m], 2.625[m], 0.625[m], 1.25[m], 0.625[m], 0.0[m], 0.0[m], 1.375[m], 1.1[m], 0.75[m], 0.625[m], 0.0[m]}};
	m h = 0.0[m];
	m dh = 0.0[m];
	m ds = 0.0[m];
	@get
	a momentum = 0.0[a];
	@get
	m dist = 0.0[m];
	characteristic private m TrackSize = 4413.58[m];
	@get
	kmh v = 0.0[kmh];
	a brakeMomentum;
	Drivetrain Drivetrain_instance;
	Environment Environment_instance;

	@generated("blockdiagram", "db78f113")
	public void move(real in powerCtrl, real in brakeCtrl, real in recupCtrl, s in mydt, g in myg) {
		v = (((BrakeMomentuC.getAt(brakeCtrl) + AirFriction.getAt(v) + Drivetrain_instance.drive(powerCtrl, recupCtrl, v, Environment_instance.ds) + Environment_instance.move(myg, mydt, v)) * mydt) + v); // Main/move 1
		if (v < 0.0[kmh]) {
			v = 0.0[kmh]; // Main/move 2/if-then 1
		} // Main/move 2
	}
}