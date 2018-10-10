/// @desc rectangle_corner(r,nr);
/// @arg r,nr
var r = argument0;
var nr = argument1;
var ro = r[eRect.Origin];
var rs = r[eRect.Size];
var corner = ro;
switch (nr mod 4) {
	case 0:
		corner[0] += rs[0];
	break;
	case 1:
		corner = vec2_add(corner, rs);
	break;
	case 2:
		corner[1] += rs[1];
	break;
	default:
	break;
}
return corner;