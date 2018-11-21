/// @desc collide_line_seg_in_rect(segment,rect);
/// @arg segment,rect
var s = argument0;
var r = argument1;
var sinst = s[SHAPE_INSTANCE];
var rinst = r[SHAPE_INSTANCE];
var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
var ro = r[eShapeRect.Origin];
var rs = r[eShapeRect.Size];

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

if (instance_exists(rinst)) {
	//ro[0] += rinst.x;
	//ro[1] += rinst.y;
	var len = point_distance(0,0,ro[0],ro[1]);
	var dir = point_direction(0,0,ro[0],ro[1]) + rinst.image_angle;
	ro[0] = rinst.x + lengthdir_x(len,dir);
	ro[1] = rinst.y + lengthdir_y(len,dir);
}

var sLine = shape_line(0,0,0,0);
sLine[eShapeLine.Base] = sp1;
sLine[eShapeLine.Direction] = vec2_subtract(sp2, sp1);
if (!collide_line_in_rect(sLine,r)) return false;

var rRange = vec2(ro[0],ro[0]+rs[0]);
var sRange = vec2(sp1[0],sp2[0]);
sRange = vec2_sort(sRange);
if (!overlapping_ranges(rRange,sRange)) return false;

rRange = vec2(ro[1],ro[1]+rs[1]);
sRange = vec2(sp1[1],sp2[1]);
sRange = vec2_sort(sRange);
return overlapping_ranges(rRange,sRange);