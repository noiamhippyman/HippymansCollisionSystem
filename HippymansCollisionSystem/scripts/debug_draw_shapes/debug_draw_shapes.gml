/// @desc debug_draw_shapes(shapes);
/// @arg shapes
var shapes = argument0;
if (ds_exists(shapes,ds_type_list)) {
	debug_draw_shapes_list(shapes);
} else if (is_array(shapes)) {
	debug_draw_shapes_array(shapes);
}