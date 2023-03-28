package tests;
import assertLib.Assert;
import resources.s;
import resources.kmh;
import resources.g;
import resources.km;

import myCar.myDrive;

static class DistanceTest {
	myDrive tester;
	Logging logger; 
	real move_powerCtrl = 42.0;
	real move_brakeCtrl = 0.0;
	real move_recuperationCtrl = 0.0;
	characteristic s move_mydt = 0.01[s];
	characteristic g move_myg = 1.0[g];
	s time = 0.0 [s];
	
	
	/* silly variables */
	characteristic real brake = -30.0;
	characteristic real power = 50.0;

	@Test
	public void testMaxDistanceWithSilly() {
		logger.log(17800000.0, 17800000.0);
		
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		
		while (tester.v < 70.0 [kmh]) {
			tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
			//logger.log(time/1.0[s],tester.v/1.0[kmh]);
			time = time + move_mydt;
		}
		
		logger.log(17800001.1, 17800001.1);
		Assert.assertNear(tester.v/1.0[kmh],70.0,1.0);
		
		while (!tester.Drivetrain_instance.batteryEmpty) {
			real val = sillyRegler(tester.v, 70.0[kmh]);
			if (val > 0.0) {
				tester.move(val, 0.0, 0.0, move_mydt, move_myg);
			}
			
			if (val < 0.0) {
				tester.move(0.0, 0.0, 30.0, move_mydt, move_myg);
			}
		}
		
		logger.log(17800002.2, tester.odo_inst.odometer / 1.0 [km]);
	}
	
	//@Test
	public void testMaxDistanceWithSillyWithoutRecup() {		
		logger.log(17800100.0, 17800000.0);
		
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		
		while (tester.v < 70.0 [kmh]) {
			tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
			//logger.log(time/1.0[s],tester.v/1.0[kmh]);
			time = time + move_mydt;
		}
		
		logger.log(17800101.1, 17800001.1);
		Assert.assertNear(tester.v/1.0[kmh],70.0,1.0);
		
		while (!tester.Drivetrain_instance.batteryEmpty) {
			real val = sillyRegler(tester.v, 70.0[kmh]);
			if (val > 0.0) {
				tester.move(val, 0.0, 0.0, move_mydt, move_myg);
			}
			
			if (val < 0.0) {
				tester.move(0.0, 30.0, 0.0, move_mydt, move_myg);
			}
		}
		
		logger.log(17800102.2, tester.odo_inst.odometer / 1.0 [km]);
	}
	
	
	public real sillyRegler(kmh currentSpeed, kmh setSpeed) {
		if (setSpeed > currentSpeed) {
			return power;
		}
		if (setSpeed < currentSpeed) {
			return brake;
		}
		
		return 0.0;
	}
}