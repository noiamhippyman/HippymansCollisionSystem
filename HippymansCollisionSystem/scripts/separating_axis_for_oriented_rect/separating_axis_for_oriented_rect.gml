/// @desc separating_axis_for_oriented_rect(segment,r);
/// @arg segment,r
var s = argument0;
var r = argument1;

var rEdge0 = oriented_rectangle_edge(r, 0);
var rEdge2 = oriented_rectangle_edge(r, 2);
var n = vec2_subtract(s[eLineSegment.A], s[eLineSegment.B]);

var axisRange = project_segment(s, n);
var r0Range = project_segment(rEdge0, n);
var r2Range = project_segment(rEdge2, n);
var rProject = range_hull(r0Range, r2Range);

return !overlapping_ranges(axisRange, rProject);