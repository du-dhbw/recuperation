package SystemLib.Bitoperations;
import common.types.udisc;

/**
 * toggleBit inverts the bit at the specified position of the argument.
 */
stateless class toggleBit
using Impl_16bit {
	/**
	 * The argument bitArray is returned with the bit at the specified position toggled.
	 */
	@c_code
	public udisc getToggleBit(udisc in bitArray, udisc in position);

	representation Impl_16bit {
		represent getToggleBit.bitArray using {
			datatype = uint16;
		};
		represent getToggleBit.position using {
			datatype = uint8;
		};
		represent getToggleBit return using {
			datatype = uint16;
		};
	}
	representation Impl_32bit {
		represent getToggleBit.bitArray using {
			datatype = uint32;
		};
		represent getToggleBit.position using {
			datatype = uint8;
		};
		represent getToggleBit return using {
			datatype = uint32;
		};
	}
	representation Impl_8bit {
		represent getToggleBit.bitArray using {
			datatype = uint8;
		};
		represent getToggleBit.position using {
			datatype = uint8;
		};
		represent getToggleBit return using {
			datatype = uint8;
		};
	}

}