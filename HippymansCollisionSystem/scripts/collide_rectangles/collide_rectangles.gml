/// @desc collide_rectangles(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;
var instA = a[SHAPE_INSTANCE];
var instB = b[SHAPE_INSTANCE];
var aOrigin = a[eShapeRect.Origin];
var aSize = a[eShapeRect.Size];
var bOrigin = b[eShapeRect.Origin];
var bSize = b[eShapeRect.Size];

var ax = aOrigin[0];
var ay = aOrigin[1];
if (instance_exists(instA)) {
	//ax += instA.x;
	//ay += instA.y;
	var len = point_distance(0,0,ax,ay);
	var dir = point_direction(0,0,ax,ay) + instA.image_angle;
	ax = instA.x + lengthdir_x(len,dir);
	ay = instA.y + lengthdir_y(len,dir);
}

var bx = bOrigin[0];
var by = bOrigin[1];
if (instance_exists(instB)) {
	//bx += instB.x;
	//by += instB.y;
	var len = point_distance(0,0,bx,by);
	var dir = point_direction(0,0,bx,by) + instB.image_angle;
	bx = instB.x + lengthdir_x(len,dir);
	by = instB.y + lengthdir_y(len,dir);
}

var aLeft = ax;
var aRight = aLeft + aSize[0];
var bLeft = bx;
var bRight = bLeft + bSize[0];

var aTop = ay;
var aBottom = aTop + aSize[1];
var bTop = by;
var bBottom = bTop + bSize[1];

return overlapping(aLeft, aRight, bLeft, bRight) && overlapping(aTop, aBottom, bTop, bBottom);