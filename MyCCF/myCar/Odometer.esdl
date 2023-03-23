package myCar;
import resources.m;
import resources.km;

class Odometer {
	@get
	km odometer;

	@generated("blockdiagram", "f07c22ac")
	public km calc(m in ds) {
		odometer = (odometer + ds); // Main/calc 1
		return odometer; // Main/calc 2
	}
}