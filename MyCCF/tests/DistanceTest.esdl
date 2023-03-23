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

	@Test
	public void testMaxDistance() {
		km saved = 0.0[km];
		
		logger.log(17800000.0, 17800000.0);
		
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);
		
		while (tester.v < 70.0 [kmh]) {
			tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
			logger.log(time/1.0[s],tester.v/1.0[kmh]);
			time = time + move_mydt;
		}
		
		logger.log(17800000.1, 17800000.1);
		Assert.assertNear(tester.v/1.0[kmh],70.0,1.0);
		
		// TODO: Tempomat einschalten
		//Driver.turnOn();
		
		//while (tester.v > 0.0 [kmh]) {
		//	CCF.calc();
		//	tester.move(move_powerCtrl, move_brakeCtrl, move_recuperationCtrl, move_mydt, move_myg);	
		//	logger.log(time/1.0[s],tester.v/1.0[kmh]);
		//	time = time + move_mydt;
		//}
		
		//logger.log(17800000.2, 17800000.2);
	}
}