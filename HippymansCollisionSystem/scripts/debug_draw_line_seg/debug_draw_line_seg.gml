/// @desc debug_draw_line_seg(lineSeg);
/// @arg lineSeg
var lineSeg = argument0;
var inst = lineSeg[SHAPE_INSTANCE];
var a = lineSeg[eShapeLineSegment.Point1];
var b = lineSeg[eShapeLineSegment.Point2];
var x1 = a[0];
var y1 = a[1];
var x2 = b[0];
var y2 = b[1];
if (instance_exists(inst)) {
	//x1 += inst.x; x2 += inst.x;
	//y1 += inst.y; y2 += inst.y;
	var len = point_distance(0,0,x1,y1);
	var dir = point_direction(0,0,x1,y1) + inst.image_angle;
	x1 = inst.x + lengthdir_x(len,dir);
	y1 = inst.y + lengthdir_y(len,dir);
	
	len = point_distance(0,0,x2,y2);
	dir = point_direction(0,0,x2,y2) + inst.image_angle;
	x2 = inst.x + lengthdir_x(len,dir);
	y2 = inst.y + lengthdir_y(len,dir);
}
draw_line(x1,y1,x2,y2);