package resources;

unit m;  // meter
unit s;  // second
unit h = 3600.0 * s;  // hour

unit km = 1000.0 * m; // kilometer
unit kmh = km / h;   // kilometer per hour
unit a = m / s^2;   // acceleration
unit g = 9.81 * a;  // earth constant

unit kg; // kilogram
unit N = kg * a; // newton
unit J = N * m; // energy
unit W = J / s;
unit Wh = W * h; // watthour
unit kWh = 1000.0 * Wh; // kilo-watthour