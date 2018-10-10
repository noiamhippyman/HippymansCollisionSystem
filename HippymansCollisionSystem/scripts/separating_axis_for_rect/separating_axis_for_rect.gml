/// @desc separating_axis_for_rect(segment,rect);
/// @arg segment,rect
var s = argument0;
var r = argument1;
var sp1 = s[eLineSegment.A];
var sp2 = s[eLineSegment.B];

var n = vec2_subtract(sp1,sp2);

var rEdgeA = shape_line_segment(0,0,0,0);
var rEdgeB = shape_line_segment(0,0,0,0);
rEdgeA[eLineSegment.A] = rectangle_corner(r, 0);
rEdgeA[eLineSegment.B] = rectangle_corner(r, 1);
rEdgeB[eLineSegment.A] = rectangle_corner(r, 2);
rEdgeB[eLineSegment.B] = rectangle_corner(r, 3);

var rEdgeARange = project_segment(rEdgeA, n);
var rEdgeBRange = project_segment(rEdgeB, n);
var rProject = range_hull(rEdgeARange,rEdgeBRange);
var axisRange = project_segment(s, n);

return !overlapping_ranges(axisRange, rProject);