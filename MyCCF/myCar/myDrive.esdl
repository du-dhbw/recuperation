package myCar;
import resources.curve_kmh;
import resources.curve_real_a;
import resources.m;
import resources.s;
import resources.kmh;
import resources.g;
import resources.a;
import resources.km;

class myDrive {
	characteristic curve_real_a BrakeMomentuC[6] = {{0.0, 1.0, 40.0, 60.0, 80.0, 100.0}, {0.0[a], 0.0[a], -1.0[a], -2.0[a], -3.0[a], -4.0[a]}};
	characteristic curve_kmh AirFriction[6] = {{0.0[kmh], 30.0[kmh], 60.0[kmh], 90.0[kmh], 120.0[kmh], 150.0[kmh]}, {0.0[a], -0.1[a], -0.2[a], -0.4[a], -0.8[a], -1.6[a]}};
	@get
	kmh v = 0.0[kmh];
	a brakeMomentum;
	Drivetrain Drivetrain_instance;
	Environment Environment_instance;
	Odometer odo_inst;
	km kmstand;

	@generated("blockdiagram", "63800c94")
	public void move(real in powerCtrl, real in brakeCtrl, real in recupCtrl, s in mydt, g in myg) {
		v = (((BrakeMomentuC.getAt(brakeCtrl) + AirFriction.getAt(v) + Drivetrain_instance.drive(powerCtrl, recupCtrl, v, Environment_instance.ds) + Environment_instance.move(myg, mydt, v)) * mydt) + v); // Main/move 1
		if (v < 0.0[kmh]) {
			v = 0.0[kmh]; // Main/move 2/if-then 1
		} // Main/move 2
		kmstand = odo_inst.calc(Environment_instance.ds); // Main/move 3
	}
}