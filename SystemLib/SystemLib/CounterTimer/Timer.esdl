package SystemLib.CounterTimer;
import SystemLib.Miscellaneous.DeltaTimeService;

/** Timer decrements the time counter by dT and signals when the time counter has reached zero. It is not retriggerable.
*/
class Timer
using Impl {
	real timeCounter = 0.0;

	/** The time counter is decremented by dT. */
	@generated("blockdiagram", "a90c1d91")
	public void compute() {
		timeCounter = max((timeCounter - DeltaTimeService.deltaT), 0.0); // Main/compute 1
	}

	/** TRUE is returned if the time counter value is greater than zero. Otherwise, FALSE is returned. */

	@no_side_effect
	@generated("blockdiagram", "a513ee0a")
	public boolean value() {
		return(timeCounter > 0.0); // Main/value 1
	}

	/** The time counter is set to startTime if the time counter value was previously less than or equal to zero. */
	@generated("blockdiagram", "919e8326")
	public void begin(real in startTime) {
		timeCounter = startTime; // Main/begin 1
	}
	representation Impl {
		represent value return using {
			datatype = sint8;
		};
		represent begin.startTime using {
			datatype = float64;
		};
		represent timeCounter using {
			datatype = float64;
		};
	}
}