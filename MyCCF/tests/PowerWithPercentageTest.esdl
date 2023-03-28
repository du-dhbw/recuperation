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
	
	private void testXPercent(real percent) {
		kmh saved = 0.0 [kmh];
		real pedal = percent;
		kmh newSpeed;
		// move a bit
		tester.move(50.0, 0.0, 0.0, move_mydt, move_myg);
		tester.move(50.0, 0.0, 0.0, move_mydt, move_myg);
		tester.move(50.0, 0.0, 0.0, move_mydt, move_myg);
		tester.move(50.0, 0.0, 0.0, move_mydt, move_myg);
		tester.move(50.0, 0.0, 0.0, move_mydt, move_myg);
		tester.move(50.0, 0.0, 0.0, move_mydt, move_myg);
		tester.move(50.0, 0.0, 0.0, move_mydt, move_myg);
		newSpeed = tester.v;
		
		while ((newSpeed - saved) > 0.0[kmh]) {
			saved = tester.v;
			tester.move(pedal, 0.0, 0.0, move_mydt, move_myg);
			newSpeed = tester.v;
		}
		
		logger.log(1870000.0 + percent, tester.v/1.0[kmh]);
	}
	
	@Test
	public void test100percent() {
		testXPercent(100.0);
	}
	
	@Test
	public void test90percent() {
		testXPercent(90.0);
	}
	
	@Test
	public void test80percent() {
		testXPercent(80.0);
	}
	
	@Test
	public void test70percent() {
		testXPercent(70.0);
	}
	
	@Test
	public void test60percent() {
		testXPercent(60.0);
	}

	@Test
	public void test50percent() {
		testXPercent(50.0);
	}
	
	@Test
	public void test40percent() {
		testXPercent(40.0);
	}
	
	@Test
	public void test30percent() {
		testXPercent(30.0);
	}
	
	@Test
	public void test20percent() {
		testXPercent(20.0);
	}
	
	@Test
	public void test10percent() {
		testXPercent(10.0);
	}
	
	@Test
	public void test07percent() {
		testXPercent(7.0);
	}
	
	@Test
	public void test06percent() {
		testXPercent(6.0);
	}
	
	@Test
	public void test055percent() {
		testXPercent(5.5);
	}
}