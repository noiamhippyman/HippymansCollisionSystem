/// @desc collide_circles(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var aCenter = a[eShapeCircle.Center];
var aRadius = a[eShapeCircle.Radius];
var bCenter = b[eShapeCircle.Center];
var bRadius = b[eShapeCircle.Radius];

var radSum = aRadius + bRadius;
var dist = vec2_subtract(aCenter,bCenter);
return vec2_length(dist) <= radSum;