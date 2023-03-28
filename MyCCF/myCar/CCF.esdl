package myCar;
import resources.DriverMessages;
import resources.CarMessages;
import resources.kmh;
import SystemLib.Miscellaneous.EdgeRising;
import SystemLib.Transferfunction.Control.PID;
import SystemLib.Comparators.GreaterZero;
import SystemLib.Nonlinears.Limiter;
import SystemLib.Transferfunction.Control.PI;

static class CCF
reads DriverMessages.brake, DriverMessages.power, CarMessages.v, DriverMessages.on, DriverMessages.increment, DriverMessages.decrement
writes CarMessages.brake, CarMessages.power, DriverMessages.display, CarMessages.recuperation {
	kmh vsoll;
	TargetVelocity TVI;
	EdgeRising OnRising;
	PID PID_instance;
	characteristic real K = -1.9;
	characteristic real TV = 0.01;
	characteristic real TN = 0.10;
	EdgeRising IncRising;
	EdgeRising DecRising;
	GreaterZero GZ;
	SplitSignal SplitSignal_instance;
	CCFState CCFS;
	Limiter Limiter_instance;
	characteristic real mn = -100.0;
	characteristic real mx = 100.0;
	characteristic kmh vs = 70.0[kmh];
	real ctl;
	characteristic real brake = -30.0;
	characteristic real power = 50.0;
	characteristic boolean withRecup = true;
	real br;
	PI PI_instance;
	real v;
	PID PID_instance_2;
	characteristic boolean PIDactive = true;

	@thread
	@generated("blockdiagram", "50430e3e")
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
		CCFS.pow = DriverMessages.power; // Main/calc 7
		CCFS.bra = DriverMessages.brake; // Main/calc 8
		CCFS.act = OnRising.value(); // Main/calc 9
		CCFS.cCFStateStatemachineTrigger(); // Main/calc 10
		PI_instance.reset(0.0); // Main/calc 11
		PI_instance.compute(((CarMessages.v - TVI.velocity()) / 1.0[kmh]), K, TN); // Main/calc 12
		PID_instance_2.reset(0.0); // Main/calc 13
		PID_instance_2.compute(((CarMessages.v - TVI.velocity()) / 1.0[kmh]), K, TV, TN); // Main/calc 14
		ctl = (if PIDactive then PID_instance_2.value() else PI_instance.value()); // Main/calc 15
		CCFS.ctrl = ctl; // Main/calc 16
		CarMessages.power = CCFS.pw; // Main/calc 17
		DriverMessages.display = CCFS.on; // Main/calc 18
		CarMessages.recuperation = CCFS.br; // Main/calc 19
	}
}