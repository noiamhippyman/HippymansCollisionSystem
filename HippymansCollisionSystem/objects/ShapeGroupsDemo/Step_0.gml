var t = current_time / 1000;

var lp1 = lineSeg[eShapeLineSegment.Point1];
var lp2 = lineSeg[eShapeLineSegment.Point2];
var cpos = circle[eShapeCircle.Center];
var rpos = rect[eShapeRect.Origin];
var orpos = orect[eShapeOrientedRect.Center];

x = mouse_x;
y = mouse_y;

lp1[@1] = RH50 - cos(t) * 100;
lp2[@1] = RH50 + cos(t) * 100;

cpos[@1] = RH50 - cos(t) * 200;

rpos[@1] = RH50 + sin(t) * 200;

orpos[@1] = RH50 + cos(t) * 200;
orect[@eShapeOrientedRect.Angle] = (current_time / 50) mod 360;