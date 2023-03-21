package SystemLib.CounterTimer;
import common.types.udisc;

/**
 * Counter increments the counter by one. This counter must be enabled explicitly.
 */

class CounterEnabled
using Impl {
	udisc counter = 0;

	/** If enable is TRUE, the counter is incremented by one. */
	@generated("blockdiagram", "2b07150d")
	public void compute(boolean in enable) {
		if (enable) {
			counter = (1 + counter); // Main/compute 1/if-then 1
		} // Main/compute 1
	}

	/** The counter value is returned. */
	@no_side_effect
	@generated("blockdiagram", "ca357f22")
	public udisc value() {
		return counter; // Main/value 1
	}

	/** If initEnable is TRUE, the counter is set to zero. */
	@generated("blockdiagram", "c20840fa")
	public void reset(boolean in initEnable) {
		if (initEnable) {
			counter = 0; // Main/reset 1/if-then 1
		} // Main/reset 1
	}
	representation Impl {
		represent counter using {
			datatype = uint32;
		};
		represent compute.enable using {
			datatype = sint8;
		};
		represent reset.initEnable using {
			datatype = sint8;
		};
		represent value return using {
			datatype = uint32;
		};
	}
}