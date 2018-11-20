/// @desc vec2_rotate(v1,angle);
/// @arg v1,angle
var v1 = argument0, angle = argument1;
var rad = degtorad(angle);
var sine = -sin(rad);
var cosine = cos(rad);
return vec2(v1[eVec2.X]*cosine - v1[eVec2.Y]*sine,
            v1[eVec2.X]*sine + v1[eVec2.Y]*cosine);