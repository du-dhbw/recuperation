package tests;
import assertLib.Assert;
import resources.m;
import resources.s;
import resources.a;
import resources.Wh;

import myCar.Battery;
import myCar.Logging;

static class BatteryUnitTest {
	Battery tester;
	Logging logger; 

	@Test
	public void move() {
		Wh battery = tester.getBattery(0.0[a], 0.0[m]);
		logger.log(1.0, battery/1.0[Wh]);
		Assert.expectEqual(battery/1.0[Wh], 1000.0);
		
		battery = tester.getBattery(4.0[a], 10.0[m]);
		logger.log(2.0, battery/1.0[Wh]);
		Assert.assertBetween(battery/1.0[Wh], 983.0, 984.0);
		
		battery = tester.getBattery(-4.0[a], 10.0[m]);
		logger.log(3.0, battery/1.0[Wh]);
		Assert.expectEqual(battery/1.0[Wh], 1000.0);
	}
}