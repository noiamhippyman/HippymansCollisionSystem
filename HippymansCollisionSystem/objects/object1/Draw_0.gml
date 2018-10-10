var t = (current_time / 100) mod 360;
/*
	RECTS,
	CIRCLES,
	LINES,
	SEGMENTS,
	ORIENTED_RECTS,
	PT_IN_CIRCLE,
	PT_IN_RECT,
	LINE_IN_CIRCLE,
	LINE_IN_RECT,
	LNSEG_IN_CIRCLE,
	LNSEG_IN_RECT,
	CIRCLE_IN_RECT,
	CIRCLE_IN_ORIENTED_RECT,
	RECT_IN_ORIENTED_RECT,
*/
var demoStr = "";
switch (demoIndex) {
	case DEMO.RECTS:
		demoStr = "Rectangles";
		var r1 = shape_rectangle(room_width/2-64,room_height/2-64,128,128);
		var r2 = shape_rectangle(mouse_x-64,mouse_y-64,128,128);
		if (collide_rectangles(r1,r2)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_rect(r1);
		debug_draw_rect(r2);
		r1 = 0;
		r2 = 0;
	break;
	
	case DEMO.CIRCLES:
		demoStr = "Circles";
		var c1 = shape_circle(room_width/2,room_height/2,64);
		var c2 = shape_circle(mouse_x,mouse_y,64);
		if (collide_circles(c1,c2)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_circle(c1);
		debug_draw_circle(c2);
		c1 = 0;
		c2 = 0;
	break;
	
	case DEMO.LINES:
		demoStr = "Lines";
		var l1 = shape_line(mouse_x,mouse_y,0,1);
		var l2 = shape_line(room_width/2,0,0,1);
		if (collide_lines(l1,l2)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line(l1);
		debug_draw_line(l2);
		l1 = 0;
		l2 = 0;
	break;
	
	case DEMO.SEGMENTS:
		demoStr = "Line Segments";
		var s1 = shape_line_segment(room_width*0.25,room_height/2,room_width*0.75,room_height/2);
		var s2 = shape_line_segment(mouse_x,mouse_y, mouse_x+64,mouse_y+64);
		if (collide_segments(s1,s2)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line_seg(s1);
		debug_draw_line_seg(s2);
		s1 = 0;
		s2 = 0;
	break;
	
	case DEMO.ORIENTED_RECTS:
		demoStr = "Oriented Rectangles";
		var or1 = shape_oriented_rect(mouse_x,mouse_y, 64,64, t);
		var or2 = shape_oriented_rect(room_width/2,room_height/2, 64,64, -t);
		if (collide_oriented_rects(or1,or2)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_oriented_rect(or1);
		debug_draw_oriented_rect(or2);
		or1 = 0;
		or2 = 0;
	break;
	
	case DEMO.PT_IN_CIRCLE:
		demoStr = "Point in Circle";
		var pt = vec2(mouse_x,mouse_y);
		var c = shape_circle(room_width/2,room_height/2,64);
		if (collide_point_in_circle(pt, c)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_circle(c);
		pt = 0;
		c = 0;
	break;
	
	case DEMO.PT_IN_RECT:
		demoStr = "Point in Rectangle";
		var pt = vec2(mouse_x,mouse_y);
		var r1 = shape_rectangle(room_width/2-64,room_height/2-64,128,128);
		if (collide_point_in_rect(pt,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_rect(r1);
		pt = 0;
		r1 = 0;
	break;
	
	case DEMO.PT_IN_LINE:
		demoStr = "Point in Line";
		var pt = vec2(mouse_x,mouse_y);
		var l1 = shape_line(room_width/2,room_height/2,0,1);
		if (collide_point_in_line(pt,l1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line(l1);
		pt = 0;
		l1 = 0;
	break;
	
	case DEMO.PT_IN_LNSEG:
		demoStr = "Point in Line Segment";
		var pt = vec2(mouse_x,mouse_y);
		var s1 = shape_line_segment(room_width*0.25,room_height/2,room_width*0.75,room_height/2);
		if (collide_point_in_segment(pt,s1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line_seg(s1);
		pt = 0;
		s1 = 0;
	break;
	
	case DEMO.PT_IN_ORIENTED_RECT:
		demoStr = "Point in Oriented Rectangle";
		var pt = vec2(mouse_x,mouse_y);
		var or1 = shape_oriented_rect(room_width/2,room_height/2,64,64,t);
		if (collide_point_in_oriented_rect(pt,or1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_oriented_rect(or1);
		pt = 0;
		or1 = 0;
	break;
	
	case DEMO.LINE_IN_CIRCLE:
		demoStr = "Line in Circle";
		var l1 = shape_line(room_width/2,room_height/2,1,0);
		var c1 = shape_circle(mouse_x,mouse_y,64);
		if (collide_line_in_circle(l1,c1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line(l1);
		debug_draw_circle(c1);
		l1 = 0;
		c1 = 0;
	break;
	
	case DEMO.LINE_IN_RECT:
		demoStr = "Line in Rectangle";
		var l1 = shape_line(room_width/2,room_height/2,1,0);
		var r1 = shape_rectangle(mouse_x-64,mouse_y-64,128,128);
		if (collide_line_in_rect(l1,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line(l1);
		debug_draw_rect(r1);
		l1 = 0;
		r1 = 0;
	break;
	
	case DEMO.LINE_IN_LNSEG:
		demoStr = "Line in Line Segment";
		var l1 = shape_line(room_width/2,room_height/2,1,0);
		var s1 = shape_line_segment(mouse_x,mouse_y,mouse_x+64,mouse_y+64);
		if (collide_line_in_line_seg(l1,s1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line(l1);
		debug_draw_line_seg(s1);
		l1 = 0;
		s1 = 0;
	break;
	
	case DEMO.LINE_IN_ORIENTED_RECT:
		demoStr = "Line in Oriented Rectangle";
		var l1 = shape_line(room_width/2,room_height/2,1,0);
		var or1 = shape_oriented_rect(mouse_x,mouse_y,64,64,t);
		if (collide_line_in_oriented_rect(l1,or1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line(l1);
		debug_draw_oriented_rect(or1);
		l1 = 0;
		or1 = 0;
	break;
	
	case DEMO.LNSEG_IN_CIRCLE:
		demoStr = "Line Segment in Circle";
		var s1 = shape_line_segment(room_width*0.25,room_height*0.5,room_width*0.75,room_height*0.5);
		var c1 = shape_circle(mouse_x,mouse_y,64);
		if (collide_line_seg_in_circle(s1,c1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line_seg(s1);
		debug_draw_circle(c1);
		s1 = 0;
		c1 = 0;
	break;
	
	case DEMO.LNSEG_IN_RECT:
		demoStr = "Line Segment in Rectangle";
		var s1 = shape_line_segment(room_width*0.25,room_height*0.5,room_width*0.75,room_height*0.5);
		var r1 = shape_rectangle(mouse_x-64,mouse_y-64,128,128);
		if (collide_line_seg_in_rect(s1,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line_seg(s1);
		debug_draw_rect(r1);
		s1 = 0;
		r1 = 0;
	break;
	
	case DEMO.LNSEG_IN_ORIENTED_RECT:
		demoStr = "Line Segment in Oriented Rectangle";
		var s1 = shape_line_segment(room_width*0.25,room_height*0.5,room_width*0.75,room_height*0.5);
		var or1 = shape_oriented_rect(mouse_x,mouse_y,64,64,t);
		if (collide_line_seg_in_oriented_rect(s1,or1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_line_seg(s1);
		debug_draw_oriented_rect(or1);
		s1 = 0;
		or1 = 0;
	break;
	
	case DEMO.CIRCLE_IN_RECT:
		demoStr = "Circle in Rectangle";
		var c1 = shape_circle(mouse_x,mouse_y,64);
		var r1 = shape_rectangle(room_width/2-64,room_height/2-64,128,128);
		if (collide_circle_in_rect(c1,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_circle(c1);
		debug_draw_rect(r1);
		c1 = 0;
		r1 = 0;
	break;
	
	case DEMO.CIRCLE_IN_ORIENTED_RECT:
		demoStr = "Circle in Oriented Rectangle";
		var c1 = shape_circle(mouse_x,mouse_y,64);
		var or1 = shape_oriented_rect(room_width/2,room_height/2,64,64,t);
		if (collide_circle_in_oriented_rect(c1,or1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_circle(c1);
		debug_draw_oriented_rect(or1);
		c1 = 0;
		or1 = 0;
	break;
	
	case DEMO.RECT_IN_ORIENTED_RECT:
		demoStr = "Rectangle in Oriented Rectangle";
		var r1 = shape_rectangle(mouse_x-64,mouse_y-64,128,128);
		var or1 = shape_oriented_rect(room_width/2,room_height/2,64,64,t);
		if (collide_rect_in_oriented_rect(r1,or1)) draw_set_color(c_orange); else draw_set_color(c_white);
		debug_draw_rect(r1);
		debug_draw_oriented_rect(or1);
		r1 = 0;
		or1 = 0;
	break;
	
	default:
		demoStr = "Press PgUp/PgDn to move through demos";
		var rw25 = room_width * 0.25;
		var rw50 = room_width * 0.50;
		var rw75 = room_width * 0.75;
		var rh25 = room_height * 0.25;
		var rh50 = room_height * 0.50;
		var rh75 = room_height * 0.75;
		var size = 128;
		var halfSize = size / 2;
		var angle = 45;

		var lineSeg1 = shape_line_segment(rw25, rh25, rw75, rh25);
		var lineSeg2 = shape_line_segment(rw25, rh75, rw75, rh75);
		var circle = shape_circle(rw50, rh50, halfSize);
		var rect = shape_rectangle(rw25 - halfSize, rh50 - halfSize, size, size);
		var orect = shape_oriented_rect(rw75, rh50, halfSize, halfSize, angle);

		debug_draw_line_seg(lineSeg1);
		debug_draw_line_seg(lineSeg2);
		debug_draw_circle(circle);
		debug_draw_rect(rect);
		debug_draw_oriented_rect(orect);
	break;
}

draw_text(1,1,demoStr);

/*

var axisX = shape_line(mouse_x,mouse_y,1,0);
var axisY = shape_line(mouse_x,mouse_y,0,1);

draw_set_color(c_white);
if (collide_lines(axisX,axisY)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_line(axisX);
debug_draw_line(axisY);

var r1 = shape_rectangle(room_width*0.5 - 64, room_height*0.5 - 64, 128, 128);
var r2 = shape_rectangle(mouse_x-64,mouse_y-64, 128,128);
if (collide_rectangles(r1,r2)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_rect(r1);
debug_draw_rect(r2);
r1 = 0;
r2 = 0;

var c1 = shape_circle(room_width * 0.5, room_height * 0.5, 64);
var c2 = shape_circle(mouse_x,mouse_y, 64);
if (collide_circles(c1,c2)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_circle(c1);
debug_draw_circle(c2);
c1 = 0;
c2 = 0;

var s1 = shape_line_segment(0,0,room_width,room_height);
var s2 = shape_line_segment(room_width,0,mouse_x,mouse_y);
if (collide_segments(s1,s2)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_line_seg(s1);
debug_draw_line_seg(s2);
s1 = 0;
s2 = 0;

var or1 = shape_oriented_rect(room_width * 0.25, room_height * 0.5, 64,64, t);
var or2 = shape_oriented_rect(mouse_x,mouse_y, 64,64, t);
if (collide_oriented_rects(or1,or2)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_oriented_rect(or1);
debug_draw_oriented_rect(or2);
or1 = 0;
or2 = 0;

c1 = shape_circle(room_width * 0.75, room_height * 0.5, 64);
if (collide_point_in_circle(mouse_x,mouse_y, c1)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_circle(c1);
c1 = 0;

c1 = shape_circle(room_width * 0.75, room_height * 0.25, 96);
if (collide_line_in_circle(axisX,c1) || collide_line_in_circle(axisY,c1)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_circle(c1);
c1 = 0;

c1 = shape_circle(64,64,64);
s1 = shape_line_segment(mouse_x,mouse_y,mouse_x-64,mouse_y);
if (collide_line_seg_in_circle(s1,c1)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_circle(c1);
debug_draw_line_seg(s1);
c1 = 0;
s1 = 0;

c1 = shape_circle(room_width-64,64,64);
r1 = shape_rectangle(mouse_x-64,mouse_y-64, 128,128);
if (collide_circle_in_rect(c1,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_circle(c1);
debug_draw_rect(r1);
c1 = 0;
r1 = 0;

c1 = shape_circle(64,room_height-64,64);
r1 = shape_oriented_rect(mouse_x,mouse_y,32,32,-t);
if (collide_circle_in_oriented_rect(c1,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_circle(c1);
debug_draw_oriented_rect(r1);
c1 = 0;
r1 = 0;

r1 = shape_rectangle(100,100,64,64);
if (collide_point_in_rect(mouse_x,mouse_y,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_rect(r1);
r1 = 0;

r1 = shape_rectangle(200,200,128,64);
if (collide_line_in_rect(axisX,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_rect(r1);
r1 = 0;

r1 = shape_rectangle(300,300,128,128);
s1 = shape_line_segment(mouse_x,mouse_y,mouse_x-64,mouse_y);
if (collide_line_seg_in_rect(s1,r1)) draw_set_color(c_orange); else draw_set_color(c_white);
debug_draw_line_seg(s1);
debug_draw_rect(r1);

*/

