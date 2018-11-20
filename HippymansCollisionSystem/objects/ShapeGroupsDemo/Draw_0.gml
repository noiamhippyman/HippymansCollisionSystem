if (collide_shape_lists(group1,group2)) {
	draw_set_color(c_orange);
} else {
	draw_set_color(c_white);
}
debug_draw_shapes(group1);
debug_draw_shapes(group2);