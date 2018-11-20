/// This is required to use collide_shapes script
global.__hcs_colFlagLineLineSeg = set_bit(0,eShapeType.Line) | set_bit(0,eShapeType.LineSegment);
global.__hcs_colFlagLineCircle = set_bit(0,eShapeType.Line) | set_bit(0,eShapeType.Circle);
global.__hcs_colFlagLineRect = set_bit(0,eShapeType.Line) | set_bit(0,eShapeType.Rect);
global.__hcs_colFlagLineOrect = set_bit(0,eShapeType.Line) | set_bit(0,eShapeType.OrientedRect);
global.__hcs_colFlagLineSegCircle = set_bit(0,eShapeType.LineSegment) | set_bit(0,eShapeType.Circle);
global.__hcs_colFlagLineSegRect = set_bit(0,eShapeType.LineSegment) | set_bit(0,eShapeType.Rect);
global.__hcs_colFlagLineSegOrect = set_bit(0,eShapeType.LineSegment) | set_bit(0,eShapeType.OrientedRect);
global.__hcs_colFlagCircleRect = set_bit(0,eShapeType.Circle) | set_bit(0,eShapeType.Rect);
global.__hcs_colFlagCircleOrect = set_bit(0,eShapeType.Circle) | set_bit(0,eShapeType.OrientedRect);
global.__hcs_colFlagRectOrect = set_bit(0,eShapeType.Rect) | set_bit(0,eShapeType.OrientedRect);