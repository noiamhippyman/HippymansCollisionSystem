/// @desc debug_draw_rect(rect);
/// @arg rect
var rect = argument0;
var inst = rect[SHAPE_INSTANCE];
var o = rect[eShapeRect.Origin];
var s = rect[eShapeRect.Size];
var x1 = o[0];
var y1 = o[1];
if (instance_exists(inst)) {
	//x1 += inst.x; x2 += inst.x;
	//y1 += inst.y; y2 += inst.y;
	var len = point_distance(0,0,x1,y1);
	var dir = point_direction(0,0,x1,y1) + inst.image_angle;
	x1 = inst.x + lengthdir_x(len,dir);
	y1 = inst.y + lengthdir_y(len,dir);
}

var x2 = x1 + s[0];
var y2 = y1 + s[1];

draw_rectangle(x1,y1,x2,y2,true);