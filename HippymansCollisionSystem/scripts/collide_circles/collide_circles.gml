/// @desc collide_circles(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;
var instA = a[SHAPE_INSTANCE];
var instB = b[SHAPE_INSTANCE];

var aCenter = a[eShapeCircle.Center];
var aRadius = a[eShapeCircle.Radius];

var bCenter = b[eShapeCircle.Center];
var bRadius = b[eShapeCircle.Radius];

if (instance_exists(instA)) {
	aCenter[0] += instA.x;
	aCenter[1] += instA.y;
}

if (instance_exists(instB)) {
	bCenter[0] += instB.x;
	bCenter[1] += instB.y;
}


var radSum = aRadius + bRadius;
var dist = vec2_subtract(aCenter,bCenter);
return vec2_length(dist) <= radSum;