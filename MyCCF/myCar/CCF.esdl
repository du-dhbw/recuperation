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
writes CarMessages.power, DriverMessages.display, CarMessages.recuperation {
	kmh vsoll;
	TargetVelocity TVI;
	EdgeRising OnRising;
	PID PID_instance;
	sysconst real K = -45.9;
	characteristic real TV = 0.01;
	sysconst real TN = 10.0;
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
	characteristic boolean PIDactive = false;

	@thread
	@generated("blockdiagram", "0fc2316b")
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
		PI_instance.compute(((CarMessages.v - TVI.velocity()) / 1.0[kmh]), K, TN); // Main/calc 11
		PID_instance_2.compute(((CarMessages.v - TVI.velocity()) / 1.0[kmh]), K, TV, TN); // Main/calc 12
		ctl = max(min((if PIDactive then PID_instance_2.value() else PI_instance.value()), 100.0), -100.0); // Main/calc 13
		CCFS.ctrl = ctl; // Main/calc 14
		CarMessages.power = CCFS.pw; // Main/calc 15
		DriverMessages.display = CCFS.on; // Main/calc 16
		CarMessages.recuperation = CCFS.br; // Main/calc 17
	}
}