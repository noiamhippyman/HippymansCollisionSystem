/// @desc shape_line(baseX,baseY,dirX,dirY);
/// @arg baseX,baseY,dirX,dirY
var bx = argument0;
var by = argument1;
var dx = argument2;
var dy = argument3;

var shape = [];
shape[eLine.Base] = vec2(bx,by);
shape[eLine.Direction] = vec2(dx,dy);
return shape;