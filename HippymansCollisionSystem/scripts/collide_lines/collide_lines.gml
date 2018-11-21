/// @desc collide_lines(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var instA = a[SHAPE_INSTANCE];
var instB = b[SHAPE_INSTANCE];

var aDir = a[eShapeLine.Direction];
var bDir = b[eShapeLine.Direction];

if (instance_exists(instA)) {
	var dir = point_direction(0,0,aDir[0],aDir[1]) + instA.image_angle;
	aDir[0] = lengthdir_x(1,dir);
	aDir[1] = lengthdir_y(1,dir);
}

if (instance_exists(instB)) {
	var dir = point_direction(0,0,bDir[0],bDir[1]) + instB.image_angle;
	bDir[0] = lengthdir_x(1,dir);
	bDir[1] = lengthdir_y(1,dir);
}

if (vec2_parallel(aDir,bDir)) {
	return equivalent_lines(a,b);
}

return true;