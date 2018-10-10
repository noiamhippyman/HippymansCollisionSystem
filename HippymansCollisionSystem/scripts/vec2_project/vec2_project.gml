/// @desc vec2_project(v1,v2);
/// @arg v1,v2
//project v1 onto v2
var v1 = argument0, v2 = argument1;
var d = vec2_dot_product(v2,v2);

if (d > 0) {
    var dp = vec2_dot_product(v1,v2);
    return vec2_multiply(v2, dp / d);
}

return v2;