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
	//aCenter[0] += instA.x;
	//aCenter[1] += instA.y;
	var len = point_distance(0,0,aCenter[0],aCenter[1]);
	var dir = point_direction(0,0,aCenter[0],aCenter[1]) + instA.image_angle;
	aCenter[0] = instA.x + lengthdir_x(len,dir);
	aCenter[1] = instA.y + lengthdir_y(len,dir);
}

if (instance_exists(instB)) {
	//bCenter[0] += instB.x;
	//bCenter[1] += instB.y;
	var len = point_distance(0,0,bCenter[0],bCenter[1]);
	var dir = point_direction(0,0,bCenter[0],bCenter[1]) + instB.image_angle;
	bCenter[0] = instB.x + lengthdir_x(len,dir);
	bCenter[1] = instB.y + lengthdir_y(len,dir);
}


var radSum = aRadius + bRadius;
var dist = vec2_subtract(aCenter,bCenter);
return vec2_length(dist) <= radSum;