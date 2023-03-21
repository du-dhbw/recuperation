package resources;

data interface CarMessages {
	@a2l_unit_label("km/h")
	velocity v = 0.0 [kmh];
	real power = 0.0;
	real brake = 0.0;
}
