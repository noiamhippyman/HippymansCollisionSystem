/// @desc separating_axis_for_rect(segment,rect);
/// @arg segment,rect
var s = argument0;
var r = argument1;

var sinst = s[SHAPE_INSTANCE];

var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
if (instance_exists(sinst)) {
	//sp1[0] += x; sp2[0] += x;
	//sp1[1] += y; sp2[1] += y;
	var len = point_distance(0,0,sp1[0],sp1[1]);
	var dir = point_direction(0,0,sp1[0],sp1[1]) + sinst.image_angle;
	sp1[0] = sinst.x + lengthdir_x(len,dir);
	sp1[1] = sinst.y + lengthdir_y(len,dir);
	
	len = point_distance(0,0,sp2[0],sp2[1]);
	dir = point_direction(0,0,sp2[0],sp2[1]) + sinst.image_angle;
	sp2[0] = sinst.x + lengthdir_x(len,dir);
	sp2[1] = sinst.y + lengthdir_y(len,dir);
}

var n = vec2_subtract(sp1,sp2);

var rEdgeA = shape_line_segment(0,0,0,0);
var rEdgeB = shape_line_segment(0,0,0,0);
rEdgeA[eShapeLineSegment.Point1] = rectangle_corner(r, 0);
rEdgeA[eShapeLineSegment.Point2] = rectangle_corner(r, 1);
rEdgeB[eShapeLineSegment.Point1] = rectangle_corner(r, 2);
rEdgeB[eShapeLineSegment.Point2] = rectangle_corner(r, 3);

var rEdgeARange = project_segment(rEdgeA, n);
var rEdgeBRange = project_segment(rEdgeB, n);
var rProject = range_hull(rEdgeARange,rEdgeBRange);
var axisRange = project_segment(s, n);

return !overlapping_ranges(axisRange, rProject);