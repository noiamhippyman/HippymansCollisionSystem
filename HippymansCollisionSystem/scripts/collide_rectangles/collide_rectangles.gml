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
	ax += instA.x;
	ay += instA.y;
}

var bx = bOrigin[0];
var by = bOrigin[1];
if (instance_exists(instB)) {
	bx += instB.x;
	by += instB.y;
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