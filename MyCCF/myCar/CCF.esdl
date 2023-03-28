package myCar;
import resources.DriverMessages;
import resources.CarMessages;
import SystemLib.Miscellaneous.EdgeRising;
import SystemLib.Comparators.GreaterZero;
import SystemLib.Nonlinears.Limiter;

static class CCF
reads DriverMessages.brake, DriverMessages.power, CarMessages.v, DriverMessages.on, DriverMessages.increment, DriverMessages.decrement
writes CarMessages.power, DriverMessages.display, CarMessages.recuperation {
	TargetVelocity TVI;
	EdgeRising OnRising;
	EdgeRising IncRising;
	EdgeRising DecRising;
	GreaterZero GZ;
	SplitSignal SplitSignal_instance;
	CCFState CCFS;
	Limiter Limiter_instance;
	real ctl;
	characteristic real brake = -30.0;
	characteristic real power = 50.0;

	@thread
	@generated("blockdiagram", "44c64a06")
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
		if (CarMessages.v > TVI.velocity()) {
			ctl = brake; // Main/calc 7/if-then 1
		} else {
			ctl = power; // Main/calc 7/if-else 1
		} // Main/calc 7
		CCFS.ctrl = ctl; // Main/calc 8
		CCFS.pow = DriverMessages.power; // Main/calc 9
		CCFS.bra = DriverMessages.brake; // Main/calc 10
		CCFS.act = OnRising.value(); // Main/calc 11
		CCFS.cCFStateStatemachineTrigger(); // Main/calc 12
		CarMessages.power = CCFS.pw; // Main/calc 13
		CarMessages.recuperation = CCFS.br; // Main/calc 14
		DriverMessages.display = CCFS.on; // Main/calc 15
	}
}