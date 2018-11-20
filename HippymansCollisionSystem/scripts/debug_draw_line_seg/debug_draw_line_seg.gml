/// @desc debug_draw_line_seg(lineSeg);
/// @arg lineSeg
var lineSeg = argument0;
var a = lineSeg[eShapeLineSegment.Point1];
var b = lineSeg[eShapeLineSegment.Point2];
draw_line(a[0],a[1],b[0],b[1]);