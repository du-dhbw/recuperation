package myCar;
import resources.CarMessages;
import resources.a;
import SystemLib.Miscellaneous.DeltaTimeService;
import resources.s;
import resources.kg;

static class myCar
reads CarMessages.power, CarMessages.brake, CarMessages.recuperation
writes CarMessages.v {
	characteristic a g = 9.81[a];
	myDrive myDrive_instance;
	public characteristic kg weight = 1500.0[kg];

	@thread
	@generated("blockdiagram", "29307c69")
	public void calc() {
		myDrive_instance.move(CarMessages.power, CarMessages.brake, CarMessages.recuperation, (DeltaTimeService.deltaT * 1.0[s]), g); // Main/calc 1
		CarMessages.v = myDrive_instance.v; // Main/calc 2
	}
}