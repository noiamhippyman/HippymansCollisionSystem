/// @desc vec2_sort(vec2);
/// @arg vec2
var v = argument0;
if (v[0] > v[1]) {
	return vec2(v[1],v[0]);
}
return v;