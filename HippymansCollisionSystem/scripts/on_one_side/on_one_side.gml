/// @desc on_one_side(line,segment);
/// @arg line,segment
var l = argument0;
var s = argument1;
var linst = l[SHAPE_INSTANCE];
var sinst = s[SHAPE_INSTANCE];

var lbase = l[eShapeLine.Base];
var ldir = l[eShapeLine.Direction];
if (instance_exists(linst)) {
	//lbase[0] += linst.x;
	//lbase[1] += linst.y;
	var len = point_distance(0,0,lbase[0],lbase[1]);
	var dir = point_direction(0,0,lbase[0],lbase[1]) + linst.image_angle;
	lbase[0] = linst.x + lengthdir_x(len,dir);
	lbase[1] = linst.y + lengthdir_y(len,dir);
	
	dir = point_direction(0,0,ldir[0],ldir[1]) + linst.image_angle;
	ldir[0] = lengthdir_x(1,dir);
	ldir[1] = lengthdir_y(1,dir);
}

var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
if (instance_exists(sinst)) {
	//sp1[0] += sinst.x; sp2[0] += sinst.x;
	//sp1[1] += sinst.y; sp2[1] += sinst.y;
	var len = point_distance(0,0,sp1[0],sp1[1]);
	var dir = point_direction(0,0,sp1[0],sp1[1]) + sinst.image_angle;
	sp1[0] = sinst.x + lengthdir_x(len,dir);
	sp1[1] = sinst.y + lengthdir_y(len,dir);
	
	len = point_distance(0,0,sp2[0],sp2[1]);
	dir = point_direction(0,0,sp2[0],sp2[1]) + sinst.image_angle;
	sp2[0] = sinst.x + lengthdir_x(len,dir);
	sp2[1] = sinst.y + lengthdir_y(len,dir);
}

var d1 = vec2_subtract(sp1, lbase);
var d2 = vec2_subtract(sp2, lbase);
var n = vec2_rotate_90(ldir);
return vec2_dot_product(n, d1) * vec2_dot_product(n, d2) > 0;