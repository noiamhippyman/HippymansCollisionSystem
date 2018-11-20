/// @desc debug_draw_oriented_rect(orientedRect);
/// @arg orientedRect
var orect = argument0;
var inst = orect[SHAPE_INSTANCE];
var o = orect[eShapeOrientedRect.Center];
var s = orect[eShapeOrientedRect.HalfSize];
var a = orect[eShapeOrientedRect.Angle];
var x1 = -s[0];
var y1 = -s[1];
var x2 = s[0];
var y2 = s[1];
var ox = o[0];
var oy = o[1];
if (instance_exists(inst)) {
	ox += inst.x;
	oy += inst.y;
	
}
matrix_set(matrix_world, matrix_build(ox,oy,0, 0,0,a, 1,1,1));
draw_rectangle(x1,y1,x2,y2,true);
matrix_set(matrix_world, matrix_build_identity());