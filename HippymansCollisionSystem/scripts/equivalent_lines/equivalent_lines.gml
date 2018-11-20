/// @desc equivalent_lines(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var aBase = a[eShapeLine.Base];
var aDir = a[eShapeLine.Direction];
var bBase = b[eShapeLine.Base];
var bDir = b[eShapeLine.Direction];

if (!vec2_parallel(aDir, bDir)) return false;

var d = vec2_subtract(aBase,bBase);
return vec2_parallel(d, aDir);