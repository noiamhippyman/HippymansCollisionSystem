/// @desc overlapping(minA,maxA,minB,maxB);
/// @arg minA,maxA,minB,maxB
var minA = argument0;
var maxA = argument1;
var minB = argument2;
var maxB = argument3;
return minB <= maxA && minA <= maxB;