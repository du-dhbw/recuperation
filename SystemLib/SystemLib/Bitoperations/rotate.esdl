package SystemLib.Bitoperations;
import common.types.udisc;

/**
 * rotate rotates the bits of the argument to the left by the specified number of positions.
 */

stateless class rotate
using Impl_16bit {
	/**
	 * The result of the left-rotation of bitArray1 by k positions is returned.
	 */
	@c_code
	public udisc getRotate(udisc in bitArray, udisc in k);

	representation Impl_16bit {
		represent getRotate.bitArray using {
			datatype = uint16;
		};
		represent getRotate.k using {
			datatype = uint8;
		};
		represent getRotate return using {
			datatype = uint16;
		};
	}
	representation Impl_32bit {
		represent getRotate.bitArray using {
			datatype = uint32;
		};
		represent getRotate.k using {
			datatype = uint8;
		};
		represent getRotate return using {
			datatype = uint32;
		};
	}
	representation Impl_8bit {
		represent getRotate.bitArray using {
			datatype = uint8;
		};
		represent getRotate.k using {
			datatype = uint8;
		};
		represent getRotate return using {
			datatype = uint8;
		};
	}

}