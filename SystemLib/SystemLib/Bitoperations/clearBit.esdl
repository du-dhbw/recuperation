package SystemLib.Bitoperations;
import common.types.udisc;

/**
 * clearBit resets the bit at the specified position of the argument. 
 */

stateless class clearBit
using Impl_16bit {
	/**
	 * The argument bitArray is returned with a zero-bit at the specified position.
	 */
	@c_code 
	public udisc getClearBit(udisc in bitArray, udisc in position);

	representation Impl_16bit {
		represent getClearBit.bitArray using {
			datatype = uint16;
		};
		represent getClearBit.position using {
			datatype = uint8;
		};
		represent getClearBit return using {
			datatype = uint16;
		};
	}
	representation Impl_32bit {
		represent getClearBit.bitArray using {
			datatype = uint32;
		};
		represent getClearBit.position using {
			datatype = uint8;
		};
		represent getClearBit return using {
			datatype = uint32;
		};
	}
	representation Impl_8bit {
		represent getClearBit.bitArray using {
			datatype = uint8;
		};
		represent getClearBit.position using {
			datatype = uint8;
		};
		represent getClearBit return using {
			datatype = uint8;
		};
	}

}