/// @desc collide_shape_arrays(shapesA,shapesB);
/// @arg shapesA,shapesB
var shapesA = argument0;
var shapesB = argument1;

var acount = array_length_1d(shapesA);
var bcount = array_length_1d(shapesB);

for (var i = 0; i < acount; ++i) {
	var shapeA = shapesA[i];
	for (var j = 0; j < bcount; ++j) {
		var shapeB = shapesB[j];
		if (collide_shapes(shapeA,shapeB)) return true;		
	}
}

return false;