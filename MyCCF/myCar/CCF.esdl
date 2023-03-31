package myCar;
import resources.DriverMessages;
import resources.CarMessages;
import SystemLib.Miscellaneous.EdgeRising;

static class CCF
reads DriverMessages.brake, DriverMessages.power, CarMessages.v, DriverMessages.on, DriverMessages.increment, DriverMessages.decrement
writes CarMessages.power, DriverMessages.display, CarMessages.recuperation {
	TargetVelocity TVI;
	EdgeRising OnRising;
	EdgeRising IncRising;
	EdgeRising DecRising;
	CCFState CCFS;
	CCFControllers CCFControl;

	@thread
	@generated("blockdiagram", "4cc1107a")
	public void calc() {
		OnRising.compute(DriverMessages.on); // Main/calc 1
		if (OnRising.value()) {
			TVI.reset(CarMessages.v); // Main/calc 2/if-then 1
		} // Main/calc 2
		IncRising.compute(DriverMessages.increment); // Main/calc 3
		DecRising.compute(DriverMessages.decrement); // Main/calc 4
		if (IncRising.value()) {
			TVI.inc(); // Main/calc 5/if-then 1
		} // Main/calc 5
		if (DecRising.value()) {
			TVI.dec(); // Main/calc 6/if-then 1
		} // Main/calc 6
		CCFS.ctrl = CCFControl.calc(TVI.velocity(), CarMessages.v); // Main/calc 7
		CCFS.pow = DriverMessages.power; // Main/calc 8
		CCFS.bra = DriverMessages.brake; // Main/calc 9
		CCFS.act = OnRising.value(); // Main/calc 10
		CCFS.cCFStateStatemachineTrigger(); // Main/calc 11
		CarMessages.power = CCFS.pw; // Main/calc 12
		CarMessages.recuperation = CCFS.br; // Main/calc 13
		DriverMessages.display = CCFS.on; // Main/calc 14
	}
}