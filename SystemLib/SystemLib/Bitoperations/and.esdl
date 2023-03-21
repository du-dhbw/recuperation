package SystemLib.Bitoperations;
import common.types.udisc;

/**
 * and returns the binary AND conjunction of the two arguments.
 */

stateless class and
using Impl_16bit {
	/**
	 * The result of the binary AND conjunction of bitArray1 and bitArray2 is returned.
 	 */
	@c_code
	public udisc getAnd(udisc in bitArray1, udisc in bitArray2);

	representation Impl_16bit {
		represent getAnd.bitArray1 using {
			datatype = uint16;
		};
		represent getAnd.bitArray2 using {
			datatype = uint16;
		};
		represent getAnd return using {
			datatype = uint16;
		};
	}
	representation Impl_32bit {
		represent getAnd.bitArray1 using {
			datatype = uint32;
		};
		represent getAnd.bitArray2 using {
			datatype = uint32;
		};
		represent getAnd return using {
			datatype = uint32;
		};
	}
	representation Impl_8bit {
		represent getAnd.bitArray1 using {
			datatype = uint8;
		};
		represent getAnd.bitArray2 using {
			datatype = uint8;
		};
		represent getAnd return using {
			datatype = uint8;
		};
	}
}