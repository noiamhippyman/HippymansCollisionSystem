/// @desc collide_line_in_rect(line,rect);
/// @arg line,rect
var l = argument0;
var r = argument1;

var linst = l[SHAPE_INSTANCE];
var rinst = r[SHAPE_INSTANCE];

var lbase = l[eShapeLine.Base];
var ldir = l[eShapeLine.Direction];

var ro = r[eShapeRect.Origin];
var rs = r[eShapeRect.Size];

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

if (instance_exists(rinst)) {
	//ro[0] += rinst.x;
	//ro[1] += rinst.y;
	var len = point_distance(0,0,ro[0],ro[1]);
	var dir = point_direction(0,0,ro[0],ro[1]) + rinst.image_angle;
	ro[0] = rinst.x + lengthdir_x(len,dir);
	ro[1] = rinst.y + lengthdir_y(len,dir);
}

var n = vec2_rotate_90(ldir);

var c1 = ro;
var c2 = vec2_add(c1, rs);
var c3 = vec2(c2[0], c1[1]);
var c4 = vec2(c1[0], c2[1]);

c1 = vec2_subtract(c1, lbase);
c2 = vec2_subtract(c2, lbase);
c3 = vec2_subtract(c3, lbase);
c4 = vec2_subtract(c4, lbase);

var dp1 = vec2_dot_product(n, c1);
var dp2 = vec2_dot_product(n, c2);
var dp3 = vec2_dot_product(n, c3);
var dp4 = vec2_dot_product(n, c4);

return (dp1 * dp2 <= 0) || (dp2 * dp3 <= 0) || (dp3 * dp4 <= 0);