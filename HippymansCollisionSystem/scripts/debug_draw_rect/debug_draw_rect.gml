/// @desc debug_draw_rect(rect);
/// @arg rect
var rect = argument0;
var o = rect[eShapeRect.Origin];
var s = rect[eShapeRect.Size];
var x1 = o[0];
var y1 = o[1];
var x2 = x1 + s[0];
var y2 = y1 + s[1];
draw_rectangle(x1,y1,x2,y2,true);