package tests;
import assertLib.Assert;
import resources.s;
import resources.kmh;
import resources.g;
import resources.km;

import myCar.myDrive;
import SystemLib.Transferfunction.Control.PI;
import SystemLib.Transferfunction.Control.PID;

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
	characteristic real brake = -50.0;
	characteristic real power = 50.0;
	
	/* PI(D) controller variables */
	characteristic real K = -1.9;
	characteristic real TV = 0.01;
	characteristic real TN = 1.10;
	
	PI PI_instance;
	PID PID_instance_2;

	@Test
	public void testMaxDistanceWithSilly() {
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		
		while (tester.v < 70.0 [kmh]) {
			tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
		}
		
		Assert.assertNear(tester.v/1.0[kmh],70.0,1.0);
		
		while (!tester.Drivetrain_instance.batteryEmpty) {
			real val = sillyController(tester.v, 70.0[kmh]);
			if (val > 0.0) {
				tester.move(val, 0.0, 0.0, move_mydt, move_myg);
			}
			else if (val < 0.0) {
				tester.move(0.0, 00.0, -val, move_mydt, move_myg);
			}
			else {
				tester.move(0.0, 0.0, 0.0, move_mydt, move_myg);
			}
		}
		
		logger.log(17800002.2, tester.odo_inst.odometer / 1.0 [km]);
	}
	
	@Test
	public void testMaxDistanceWithSillyWithoutRecup() {
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		
		while (tester.v < 70.0 [kmh]) {
			tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
		}
		
		Assert.assertNear(tester.v/1.0[kmh],70.0,1.0);
		
		while (!tester.Drivetrain_instance.batteryEmpty) {
			real val = sillyController(tester.v, 70.0[kmh]);
			if (val > 0.0) {
				tester.move(val, 0.0, 0.0, move_mydt, move_myg);
			}
			else if (val < 0.0) {
				tester.move(0.0, -val, 0.0, move_mydt, move_myg);
			}
			else {
				tester.move(0.0, 0.0, 0.0, move_mydt, move_myg);
			}
			
		}
		
		logger.log(17800102.2, tester.odo_inst.odometer / 1.0 [km]);
	}
	
	@Test
	public void testDistancePIRegler() {
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		
		while (tester.v < 70.0 [kmh]) {
			tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
		}
		
		Assert.assertNear(tester.v/1.0[kmh], 70.0, 1.0);
		
		while (!tester.Drivetrain_instance.batteryEmpty) {
			real val = piController(tester.v, 70.0[kmh]);
			if (val > 0.0) {
				tester.move(val, 0.0, 0.0, move_mydt, move_myg);
			}
			else if (val < 0.0) {
				tester.move(0.0, 0.0, -val, move_mydt, move_myg);
			}
			else {
				tester.move(0.0, 0.0, 0.0, move_mydt, move_myg);
			}
			
		}
		
		logger.log(17800202.2, tester.odo_inst.odometer / 1.0 [km]);
	}
	
	@Test
	public void testDistancePIDRegler() {
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		
		while (tester.v < 70.0 [kmh]) {
			tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
		}
		
		Assert.assertNear(tester.v/1.0[kmh],70.0,1.0);
		
		while (!tester.Drivetrain_instance.batteryEmpty) {
			real val = pidController(tester.v, 70.0[kmh]);
			if (val > 0.0) {
				tester.move(val, 0.0, 0.0, move_mydt, move_myg);
			}
			else if (val < 0.0) {
				tester.move(0.0, 0.0, -val, move_mydt, move_myg);
			}
			else {
				tester.move(0.0, 0.0, 0.0, move_mydt, move_myg);
			}
			
		}
		
		logger.log(17800302.2, tester.odo_inst.odometer / 1.0 [km]);
	}
	
	real sillyController(kmh currentSpeed, kmh setSpeed) {
		if (setSpeed > currentSpeed) {
			return power;
		}
		if (setSpeed < currentSpeed) {
			return brake;
		}
		
		return 0.0;
	}
	
	real piController(kmh currentSpeed, kmh setSpeed) {
		PI_instance.reset(0.0); // Main/calc 13
		PI_instance.compute(((currentSpeed - setSpeed) / 1.0[kmh]), K, TN);
		return PI_instance.value();
	}
	
	real pidController(kmh currentSpeed, kmh setSpeed) {
		PID_instance_2.reset(0.0);
		PID_instance_2.compute(((currentSpeed - setSpeed) / 1.0[kmh]), K, TV, TN);
		return PID_instance_2.value();
	}
}