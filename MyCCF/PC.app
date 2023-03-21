application {
	class myCar.myCar
	class myCar.CCF
	class myCar.Driver
}
schedule {
	startup {
	}
	shutdown {
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process myCar.Driver.calc
		process myCar.CCF.calc
		process myCar.myCar.calc
	}
}