/// @desc collide_point_in_line(vec2,line);
/// @arg vec2,line
var v = argument0;
var l = argument1;
var lbase = l[eLine.Base];
var ldir = l[eLine.Direction];
if (collide_points(lbase, v)) return true;

var lp = vec2_subtract(v, lbase);
return vec2_parallel(lp, ldir);