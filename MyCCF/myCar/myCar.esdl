package myCar;
import resources.CarMessages;
import resources.a;
import SystemLib.Miscellaneous.DeltaTimeService;
import resources.s;

static class myCar
reads CarMessages.power, CarMessages.brake
writes CarMessages.v {
	characteristic a g = 9.81[a];
	myDrive myDrive_instance;

	@thread
	@generated("blockdiagram", "6f86e77b")
	public void calc() {
		myDrive_instance.move(CarMessages.power, CarMessages.brake, (DeltaTimeService.deltaT * 1.0[s]), g); // Main/calc 1
		CarMessages.v = myDrive_instance.v; // Main/calc 2
	}
}