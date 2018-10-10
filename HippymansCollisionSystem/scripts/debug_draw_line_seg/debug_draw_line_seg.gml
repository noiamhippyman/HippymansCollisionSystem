/// @desc debug_draw_line_seg(lineSeg);
/// @arg lineSeg
var lineSeg = argument0;
var a = lineSeg[eLineSegment.A];
var b = lineSeg[eLineSegment.B];
draw_line(a[0],a[1],b[0],b[1]);