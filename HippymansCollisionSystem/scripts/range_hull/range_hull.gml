/// @desc range_hull(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;
return vec2(
	a[0] < b[0] ? a[0] : b[0],
	a[1] > b[1] ? a[1] : b[1]
);