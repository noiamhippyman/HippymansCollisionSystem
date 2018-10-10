/// @desc debug_draw_oriented_rect(orientedRect);
/// @arg orientedRect
var orect = argument0;
var o = orect[eOrientedRect.Origin];
var s = orect[eOrientedRect.HalfSize];
var a = orect[eOrientedRect.Angle];
var x1 = -s[0];
var y1 = -s[1];
var x2 = s[0];
var y2 = s[1];
matrix_set(matrix_world, matrix_build(o[0],o[1],0, 0,0,a, 1,1,1));
draw_rectangle(x1,y1,x2,y2,true);
matrix_set(matrix_world, matrix_build_identity());