package SystemLib.Bitoperations;
import common.types.udisc;

/**
 * getBit returns the value of the bit at the specified position of the argument as a logical value.
 */

stateless class getBit
using Impl_16bit {
	/** 
	 * TRUE is returned, if the bit at the specified position is equal to 1, otherwise FALSE is returned.
	 */
	@c_code
	public boolean getGetBit(udisc in bitArray, udisc in position);

	representation Impl_16bit {
		represent getGetBit.bitArray using {
			datatype = uint16;
		};
		represent getGetBit.position using {
			datatype = uint8;
		};
		represent getGetBit return using {
			datatype = sint8;
		};
	}
	representation Impl_32bit {
		represent getGetBit.bitArray using {
			datatype = uint32;
		};
		represent getGetBit.position using {
			datatype = uint8;
		};
		represent getGetBit return using {
			datatype = sint8;
		};
	}
	representation Impl_8bit {
		represent getGetBit.bitArray using {
			datatype = uint8;
		};
		represent getGetBit.position using {
			datatype = uint8;
		};
		represent getGetBit return using {
			datatype = sint8;
		};
	}

}