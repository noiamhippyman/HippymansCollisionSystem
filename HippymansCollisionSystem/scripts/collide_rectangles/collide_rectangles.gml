/// @desc collide_rectangles(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var aOrigin = a[eRect.Origin];
var aSize = a[eRect.Size];
var bOrigin = b[eRect.Origin];
var bSize = b[eRect.Size];

var aLeft = aOrigin[0];
var aRight = aOrigin[0] + aSize[0];
var bLeft = bOrigin[0];
var bRight = bOrigin[0] + bSize[0];

var aTop = aOrigin[1];
var aBottom = aOrigin[1] + aSize[1];
var bTop = bOrigin[1];
var bBottom = bOrigin[1] + bSize[1];

return overlapping(aLeft, aRight, bLeft, bRight) && overlapping(aTop, aBottom, bTop, bBottom);