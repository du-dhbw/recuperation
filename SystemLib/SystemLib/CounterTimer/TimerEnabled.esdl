package SystemLib.CounterTimer;
import SystemLib.Miscellaneous.DeltaTimeService;

/** TimerEnabled decrements the time counter by dT and signals when the time counter has reached zero. It must be enabled explicitly.
*/
class TimerEnabled
using Impl {
	boolean inOld = true;
	real timeCounter = 0.0;

	/** If enable is TRUE, val has a rising edge and the time counter value is less or equal to zero, the timer is started,i.e. its counter value is set to the start time. Otherwise, the time counter is decremented by dT. 
    * If enable is FALSE, nothing happens. 
    * */
	@generated("blockdiagram", "357ab5ce")
	public void compute(boolean in enable, boolean in val, real in startTime) {
		if (enable) {
			timeCounter = max((timeCounter - DeltaTimeService.deltaT), 0.0); // Main/compute 1/if-then 1
		} // Main/compute 1
		if ((val && (!inOld)) && (enable && (timeCounter <= 0.0))) {
			timeCounter = startTime; // Main/compute 2/if-then 1
		} // Main/compute 2
		inOld = val; // Main/compute 3
	}

	/** TRUE is returned, if the time counter is greater than zero. Otherwise, FALSE is returned. */
	@no_side_effect
	@generated("blockdiagram", "7515af3e")
	public boolean value() {
		return(timeCounter > 0.0); // Main/value 1
	}
	representation Impl {
		represent compute.enable using {
			datatype = sint8;
		};
		represent compute.val using {
			datatype = sint8;
		};
		represent inOld using {
			datatype = sint8;
		};
		represent value return using {
			datatype = sint8;
		};
		represent compute.startTime using {
			datatype = float64;
		};
		represent timeCounter using {
			datatype = float64;
		};
	}
}