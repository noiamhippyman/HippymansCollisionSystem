/// @desc collide_shape_lists(shapesA,shapesB);
/// @arg shapesA,shapesB
var shapesA = argument0;
var shapesB = argument1;

var acount = ds_list_size(shapesA);
var bcount = ds_list_size(shapesB);

for (var i = 0; i < acount; ++i) {
	var shapeA = shapesA[|i];
	for (var j = 0; j < bcount; ++j) {
		var shapeB = shapesB[|j];
		if (collide_shapes(shapeA,shapeB)) return true;		
	}
}

return false;