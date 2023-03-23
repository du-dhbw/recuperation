package tests;
import assertLib.Assert;
import resources.curve_kmh;
import resources.curve_m;
import resources.curve_real_a;
import resources.map_real_kmh;
import resources.m;
import resources.s;
import resources.kmh;
import resources.g;
import resources.a;

import myCar.Logging;
import myCar.myDrive;

static class myDriveUnitTest {
	myDrive tester;
	Logging logger; 
	real move_powerCtrl = 20.0;
	real move_brakeCtrl = 0.0;
	real move_recuperationCtrl = 0.0;
	characteristic s move_mydt = 0.01[s];
	characteristic g move_myg = 0.0[g];
	s time = 0.0 [s];

	@Test
	public void move() {
		while (tester.v < 20.0 [kmh]) {
			tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
			logger.log(time/1.0[s],tester.v/1.0[kmh]);
			time = time + move_mydt;	
		}
		Assert.assertNear(tester.v/1.0[kmh],20.0,1.0);
	}
}