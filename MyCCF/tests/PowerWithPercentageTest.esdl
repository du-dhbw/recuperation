package tests;
import resources.s;
import resources.g;
import resources.kmh;

import myCar.myDrive;

static class PowerWithPercentageTest {
	myDrive tester;
	Logging logger; 
	characteristic s move_mydt = 0.1[s];
	characteristic g move_myg = 0.0[g];
	s time = 0.0 [s];
	
	@Test
	public void test100percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 100.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870100.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test90percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 90.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870090.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test80percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 80.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870080.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test70percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 70.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870070.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test60percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 60.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870060.0, tester.v/1.0[kmh]);
	}

	@Test
	public void test50percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 50.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870050.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test40percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 40.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870040.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test30percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 30.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870030.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test20percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 20.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870020.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test10percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 10.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870010.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test07percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 7.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870007.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test06percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 6.0;
		kmh newSpeed;
		// move a bit
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870006.0, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test055percent() {
		kmh saved = 0.0 [kmh];
		real pedal = 5.5;
		kmh newSpeed;
		// move a bit
		tester.move(10.0, 0.0, 0.0, move_mydt, move_myg);
		tester.move(10.0, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870005.5, tester.v/1.0[kmh]);
	}
}