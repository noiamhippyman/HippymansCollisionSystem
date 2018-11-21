/// @desc collide_line_in_oriented_rect(line,orientedRect);
/// @arg line,orientedRect
var l = argument0;
var r = argument1;

var linst = l[SHAPE_INSTANCE];
var rinst = r[SHAPE_INSTANCE];

var lbase = l[eShapeLine.Base];
var ldir = l[eShapeLine.Direction];

var rcenter = r[eShapeOrientedRect.Center];
var rangle = r[eShapeOrientedRect.Angle];

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
	//rcenter[0] += rinst.x;
	//rcenter[1] += rinst.y;
	var len = point_distance(0,0,rcenter[0],rcenter[1]);
	var dir = point_direction(0,0,rcenter[0],rcenter[1]) + rinst.image_angle;
	rcenter[0] = rinst.x + lengthdir_x(len,dir);
	rcenter[1] = rinst.y + lengthdir_y(len,dir);
	
	rangle += rinst.image_angle;
}

var lr = shape_rectangle(0,0,0,0);
lr[eShapeRect.Size] = vec2_multiply(r[eShapeOrientedRect.HalfSize], 2);
		
var ll = shape_line(0,0,0,0);
ll[eShapeLine.Base] = vec2_subtract(lbase, rcenter);
ll[eShapeLine.Base] = vec2_rotate(ll[eShapeLine.Base], -rangle);
ll[eShapeLine.Base] = vec2_add(ll[eShapeLine.Base], r[eShapeOrientedRect.HalfSize]);
ll[eShapeLine.Direction] = vec2_rotate(ldir, -rangle);

return collide_line_in_rect(ll, lr);