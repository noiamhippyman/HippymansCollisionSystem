/// @desc collide_circles(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var aCenter = a[eCircle.Center];
var aRadius = a[eCircle.Radius];
var bCenter = b[eCircle.Center];
var bRadius = b[eCircle.Radius];

var radSum = aRadius + bRadius;
var dist = vec2_subtract(aCenter,bCenter);
return vec2_length(dist) <= radSum;