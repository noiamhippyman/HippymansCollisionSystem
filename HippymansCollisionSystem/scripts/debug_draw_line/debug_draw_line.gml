/// @desc debug_draw_line(line);
/// @arg line
var line = argument0;
var lbase = line[eShapeLine.Base];
var ldir = line[eShapeLine.Direction];
var inst = line[SHAPE_INSTANCE];

var size = max(room_width,room_height) * 2;
var angle = point_direction(0,0,ldir[0],ldir[1]);

var x1 = lbase[0];
var y1 = lbase[1];
if (instance_exists(inst)) {
	x1 += inst.x;
	y1 += inst.y;
}
var x2 = x1 + lengthdir_x(size, angle);
var y2 = y1 + lengthdir_y(size, angle);
draw_line(x1,y1,x2,y2);

x2 = x1 + lengthdir_x(size, angle+180);
y2 = y1 + lengthdir_y(size, angle+180);
draw_line(x1,y1,x2,y2);