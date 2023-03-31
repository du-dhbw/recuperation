package myCar;
import SystemLib.Transferfunction.Control.PI;
import SystemLib.Transferfunction.Control.PID;
import resources.kmh;

class CCFControllers {
	characteristic real K = -45.9;
	PI PI_instance;
	characteristic real sillyBrake = -30.0;
	characteristic real TN = 10.0;
	characteristic real TV = 0.01;
	PID PID_instance_2;
	characteristic integer activeController = 0;
	characteristic real sillyPower = 50.0;

	@generated("blockdiagram", "a0927d4c")
	public real calc(kmh in setSpeed, kmh in velocity) {
		PID_instance_2.compute(((velocity - setSpeed) / 1.0[kmh]), K, TV, TN); // Main/calc 1
		PI_instance.compute(((velocity - setSpeed) / 1.0[kmh]), K, TN); // Main/calc 2
		return max(min((switch activeController
				case 1 : PI_instance.value()
				case 2 : PID_instance_2.value()
				default :(if(setSpeed > velocity) then sillyPower else sillyBrake)), 100.0), -100.0); // Main/calc 3
	}
}