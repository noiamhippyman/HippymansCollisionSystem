/// @desc collide_lines(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var aDir = a[eShapeLine.Direction];
var bDir = b[eShapeLine.Direction];

if (vec2_parallel(aDir,bDir)) {
	return equivalent_lines(a,b);
}

return true;