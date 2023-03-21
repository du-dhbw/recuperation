package SystemLib.Bitoperations;
import common.types.udisc;

/**
 * shiftLeft shifts all bits of the argument to the left. The right bits are filled with zeros.
 */

stateless class shiftLeft
using Impl_16bit {
	/**
	 * The result of the left-shift by k positions is returned. For k=1 the result corresponds to the multiplication by two.
	 */
	@c_code
	public udisc getShiftLeft(udisc in bitArray, udisc in k);

	representation Impl_16bit {
		represent getShiftLeft.bitArray using {
			datatype = uint16;
		};
		represent getShiftLeft.k using {
			datatype = uint8;
		};
		represent getShiftLeft return using {
			datatype = uint16;
		};
	}
	representation Impl_32bit {
		represent getShiftLeft.bitArray using {
			datatype = uint32;
		};
		represent getShiftLeft.k using {
			datatype = uint8;
		};
		represent getShiftLeft return using {
			datatype = uint32;
		};
	}
	representation Impl_8bit {
		represent getShiftLeft.bitArray using {
			datatype = uint8;
		};
		represent getShiftLeft.k using {
			datatype = uint8;
		};
		represent getShiftLeft return using {
			datatype = uint8;
		};
	}

}