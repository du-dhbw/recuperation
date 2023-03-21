package resources;

type curve_real is table real -> real;
type curve_real_a is table real -> a;
type curve_m is table m -> m;
type curve_s is table s -> real;
type curve_kmh is table kmh -> a;
type curve_m_kmh is table m -> kmh;

type map_real_real is table real, real -> real;
type map_real_kmh is table real, kmh -> a;