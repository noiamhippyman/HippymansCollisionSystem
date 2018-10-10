/// @desc enlarge_rectangle_point(rect,vec2);
/// @arg rect,vec2
var r = argument0;
var v = argument1;
var ro = r[eRect.Origin];
var rs = r[eRect.Size];

var enlarged = shape_rectangle(
	min(ro[0], v[0]),
	min(ro[1], v[1]),
	max(ro[0]+rs[0], v[0]),
	max(ro[1]+rs[1], v[1])
);

enlarged[eRect.Size] = vec2_subtract(enlarged[eRect.Size], enlarged[eRect.Origin]);
return enlarged;