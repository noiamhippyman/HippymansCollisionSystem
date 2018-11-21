/// @desc collide_line_in_circle(line,circle);
/// @arg line,circle
var l = argument0;
var c = argument1;
var linst = l[SHAPE_INSTANCE];
var cinst = c[SHAPE_INSTANCE];
var lbase = l[eShapeLine.Base];
var ldir = l[eShapeLine.Direction];
var ccenter = c[eShapeCircle.Center];

if (instance_exists(linst)) {
	//lbase[0] += linst.x;
	//lbase[1] += linst.y;
	var len = point_distance(0,0,lbase[0],y1);
	var dir = point_direction(0,0,lbase[0],lbase[1]) + linst.image_angle;
	lbase[0] = linst.x + lengthdir_x(len,dir);
	lbase[1] = linst.y + lengthdir_y(len,dir);
	
	dir = point_direction(0,0,ldir[0],ldir[1]) + linst.image_angle;
	ldir[0] = lengthdir_x(1,dir);
	ldir[1] = lengthdir_y(1,dir);
}

if (instance_exists(cinst)) {
	//ccenter[0] += cinst.x;
	//ccenter[1] += cinst.y;
	var len = point_distance(0,0,ccenter[0],ccenter[1]);
	var dir = point_direction(0,0,ccenter[0],ccenter[1]) + cinst.image_angle;
	ccenter[0] = cinst.x + lengthdir_x(len,dir);
	ccenter[1] = cinst.y + lengthdir_y(len,dir);
}

var lc = vec2_subtract(ccenter, lbase);
var p = vec2_project(lc, ldir);
var near = vec2_add(lbase, p);
return collide_point_in_circle(near, c);