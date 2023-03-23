package tests;
import assertLib.Assert;
import resources.m;
import resources.a;

import myCar.Battery;
static class BatteryUnitTest {
	Battery tester;
	Logging logger; 

	@Test
	public void move() {
		real battery = tester.getBattery(0.0[a], 0.0[m]);
		logger.log(1.0, battery);
		Assert.expectEqual(battery, 1.0);
		
		battery = tester.getBattery(4.0[a], 10.0[m]);
		logger.log(2.0, battery);
		Assert.assertBetween(battery, 0.983, 0.984);
		
		battery = tester.getBattery(-4.0[a], 10.0[m]);
		logger.log(3.0, battery);
		Assert.expectEqual(battery, 1.0);
	}
}