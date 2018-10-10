/// @desc equivalent_lines(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var aBase = a[eLine.Base];
var aDir = a[eLine.Direction];
var bBase = b[eLine.Base];
var bDir = b[eLine.Direction];

if (!vec2_parallel(aDir, bDir)) return false;

var d = vec2_subtract(aBase,bBase);
return vec2_parallel(d, aDir);