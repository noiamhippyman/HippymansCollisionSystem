/// @desc collide_line_seg_in_rect(segment,rect);
/// @arg segment,rect
var s = argument0;
var r = argument1;
var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
var ro = r[eShapeRect.Origin];
var rs = r[eShapeRect.Size];

var sLine = shape_line(0,0,0,0);
sLine[eShapeLine.Base] = sp1;
sLine[eShapeLine.Direction] = vec2_subtract(sp2, sp1);
if (!collide_line_in_rect(sLine,r)) return false;

var rRange = vec2(ro[0],ro[0]+rs[0]);
var sRange = vec2(sp1[0],sp2[0]);
sRange = vec2_sort(sRange);
if (!overlapping_ranges(rRange,sRange)) return false;

rRange = vec2(ro[1],ro[1]+rs[1]);
sRange = vec2(sp1[1],sp2[1]);
sRange = vec2_sort(sRange);
return overlapping_ranges(rRange,sRange);