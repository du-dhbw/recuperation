package myCar;
import resources.DriverMessages;

static class Driver
writes DriverMessages.power, DriverMessages.brake, DriverMessages.on, DriverMessages.increment, DriverMessages.decrement {
	characteristic real power = 0.0;
	characteristic real brake = 0.0;
	characteristic boolean on = false;
	characteristic boolean inc = false;
	characteristic boolean dec = false;

	@thread
	@generated("blockdiagram", "03085ed4")
	public void calc() {
		DriverMessages.power = power; // Main/calc 1
		DriverMessages.brake = brake; // Main/calc 2
		DriverMessages.on = on; // Main/calc 3
		DriverMessages.increment = inc; // Main/calc 4
		DriverMessages.decrement = dec; // Main/calc 5
	}
}