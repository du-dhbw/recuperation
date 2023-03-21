package SystemLib.Math;


/**
 * MathLib is a C code class that returns the results of numerous mathematical functions.
 */
class MathLib
using R64 {
	extern public real sqrt(real val);

	extern public real pow(real val, real factor);

	extern public real sin(real val);

	extern public real cos(real val);

	extern public real tan(real val);

	extern public real sinh(real val);

	extern public real cosh(real val);

	extern public real tanh(real val);

	extern public real asin(real val);

	extern public real acos(real val);

	extern public real atan(real val);

	extern public real atan2(real x, real y);

	extern public real exp(real val);

	extern public real log(real val);

	extern public real log10(real val);

	extern public real ceil(real val);

	extern public real floor(real val);
	representation R32 {
		@symbol("sqrtf")
		represent sqrt;
		@symbol("powf")
		represent pow;
		@symbol("sinf")
		represent sin;
		@symbol("cosf")
		represent cos;
		@symbol("tanf")
		represent tan;
		@symbol("sinhf")
		represent sinh;
		@symbol("coshf")
		represent cosh;
		@symbol("tanhf")
		represent tanh;
		@symbol("asinf")
		represent asin;
		@symbol("acosf")
		represent acos;
		@symbol("atanf")
		represent atan;
		@symbol("atan2f")
		represent atan2;
		@symbol("expf")
		represent exp;
		@symbol("logf")
		represent log;
		@symbol("log10f")
		represent log10;
		@symbol("ceilf")
		represent ceil;
		@symbol("floorf")
		represent floor;
		represent sqrt.val using {
			datatype = float32;
		};
		represent pow.factor using {
			datatype = float32;
		};
		represent cos.val using {
			datatype = float32;
		};
		represent sinh.val using {
			datatype = float32;
		};
		represent tanh.val using {
			datatype = float32;
		};
		represent acos.val using {
			datatype = float32;
		};
		represent atan2.x using {
			datatype = float32;
		};
		represent exp.val using {
			datatype = float32;
		};
		represent log10.val using {
			datatype = float32;
		};
		represent sqrt return using {
			datatype = float32;
		};
		represent sin return using {
			datatype = float32;
		};
		represent tan return using {
			datatype = float32;
		};
		represent cosh return using {
			datatype = float32;
		};
		represent asin return using {
			datatype = float32;
		};
		represent atan return using {
			datatype = float32;
		};
		represent exp return using {
			datatype = float32;
		};
		represent log10 return using {
			datatype = float32;
		};
		represent floor return using {
			datatype = float32;
		};
		represent pow.val using {
			datatype = float32;
		};
		represent sin.val using {
			datatype = float32;
		};
		represent tan.val using {
			datatype = float32;
		};
		represent cosh.val using {
			datatype = float32;
		};
		represent asin.val using {
			datatype = float32;
		};
		represent atan.val using {
			datatype = float32;
		};
		represent atan2.y using {
			datatype = float32;
		};
		represent log.val using {
			datatype = float32;
		};
		represent ceil.val using {
			datatype = float32;
		};
		represent floor.val using {
			datatype = float32;
		};
		represent pow return using {
			datatype = float32;
		};
		represent cos return using {
			datatype = float32;
		};
		represent sinh return using {
			datatype = float32;
		};
		represent tanh return using {
			datatype = float32;
		};
		represent acos return using {
			datatype = float32;
		};
		represent atan2 return using {
			datatype = float32;
		};
		represent log return using {
			datatype = float32;
		};
		represent ceil return using {
			datatype = float32;
		};
	}
	representation R64 {
		@symbol("sqrt")
		represent sqrt;
		@symbol("pow")
		represent pow;
		@symbol("sin")
		represent sin;
		@symbol("cos")
		represent cos;
		@symbol("tan")
		represent tan;
		@symbol("sinh")
		represent sinh;
		@symbol("cosh")
		represent cosh;
		@symbol("tanh")
		represent tanh;
		@symbol("asin")
		represent asin;
		@symbol("acos")
		represent acos;
		@symbol("atan")
		represent atan;
		@symbol("atan2")
		represent atan2;
		@symbol("exp")
		represent exp;
		@symbol("log")
		represent log;
		@symbol("log10")
		represent log10;
		@symbol("ceil")
		represent ceil;
		@symbol("floor")
		represent floor;
		represent sqrt.val using {
			datatype = float64;
		};
		represent pow.val using {
			datatype = float64;
		};
		represent pow.factor using {
			datatype = float64;
		};
		represent sin.val using {
			datatype = float64;
		};
		represent cos.val using {
			datatype = float64;
		};
		represent tan.val using {
			datatype = float64;
		};
		represent sinh.val using {
			datatype = float64;
		};
		represent cosh.val using {
			datatype = float64;
		};
		represent tanh.val using {
			datatype = float64;
		};
		represent asin.val using {
			datatype = float64;
		};
		represent acos.val using {
			datatype = float64;
		};
		represent atan.val using {
			datatype = float64;
		};
		represent atan2.x using {
			datatype = float64;
		};
		represent atan2.y using {
			datatype = float64;
		};
		represent exp.val using {
			datatype = float64;
		};
		represent log.val using {
			datatype = float64;
		};
		represent log10.val using {
			datatype = float64;
		};
		represent ceil.val using {
			datatype = float64;
		};
		represent floor.val using {
			datatype = float64;
		};
		represent sqrt return using {
			datatype = float64;
		};
		represent pow return using {
			datatype = float64;
		};
		represent sin return using {
			datatype = float64;
		};
		represent cos return using {
			datatype = float64;
		};
		represent tan return using {
			datatype = float64;
		};
		represent sinh return using {
			datatype = float64;
		};
		represent cosh return using {
			datatype = float64;
		};
		represent tanh return using {
			datatype = float64;
		};
		represent asin return using {
			datatype = float64;
		};
		represent acos return using {
			datatype = float64;
		};
		represent atan return using {
			datatype = float64;
		};
		represent atan2 return using {
			datatype = float64;
		};
		represent exp return using {
			datatype = float64;
		};
		represent log return using {
			datatype = float64;
		};
		represent log10 return using {
			datatype = float64;
		};
		represent ceil return using {
			datatype = float64;
		};
		represent floor return using {
			datatype = float64;
		};
	}
}