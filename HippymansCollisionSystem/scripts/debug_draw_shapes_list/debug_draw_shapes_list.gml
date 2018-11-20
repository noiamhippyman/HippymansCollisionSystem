/// @desc debug_draw_shapes_list(shapes);
/// @arg shapes
var shapes = argument0;
var shapeCount = ds_list_size(shapes);

for (var i = 0; i < shapeCount; ++i) {
	var shapeA = shapes[|i];
	
	/*
	draw_set_color(c_white);
	for (var j = 0; j < shapeCount; ++j) {
		if (j == i) continue;
		var shapeB = shapes[|j];
		if (collide_shapes(shapeA,shapeB)) {
			draw_set_color(c_orange);
			break;
		}
	}
	*/
	
	debug_draw_shape(shapeA);
}