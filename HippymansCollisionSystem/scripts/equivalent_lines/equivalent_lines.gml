/// @desc equivalent_lines(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var instA = a[SHAPE_INSTANCE];
var instB = b[SHAPE_INSTANCE];

var aBase = a[eShapeLine.Base];
var aDir = a[eShapeLine.Direction];
var bBase = b[eShapeLine.Base];
var bDir = b[eShapeLine.Direction];

if (instance_exists(instA)) {
	var len = point_distance(0,0,aBase[0],aBase[1]);
	var dir = point_direction(0,0,aBase[0],aBase[1]) + instA.image_angle;
	aBase[0] = instA.x + lengthdir_x(len,dir);
	aBase[1] = instA.y + lengthdir_y(len,dir);
	
	dir = point_direction(0,0,aDir[0],aDir[1]) + instA.image_angle;
	aDir[0] = lengthdir_x(1,dir);
	aDir[1] = lengthdir_y(1,dir);
}

if (instance_exists(instB)) {
	var len = point_distance(0,0,bBase[0],bBase[1]);
	var dir = point_direction(0,0,bBase[0],bBase[1]) + instB.image_angle;
	bBase[0] = instB.x + lengthdir_x(len,dir);
	bBase[1] = instB.y + lengthdir_y(len,dir);
	
	dir = point_direction(0,0,bDir[0],bDir[1]) + instB.image_angle;
	bDir[0] = lengthdir_x(1,dir);
	bDir[1] = lengthdir_y(1,dir);
}

if (!vec2_parallel(aDir, bDir)) return false;

var d = vec2_subtract(aBase,bBase);
return vec2_parallel(d, aDir);