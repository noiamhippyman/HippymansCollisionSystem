#macro SHAPE_TYPE 0
#macro SHAPE_INSTANCE 1

enum eShapeType {
	Line, LineSegment, Circle, Rect, OrientedRect
}

enum eShapeLine {
	Base = 2, Direction
}

enum eShapeLineSegment {
	Point1 = 2, Point2
}

enum eShapeCircle {
	Center = 2, Radius
}

enum eShapeRect {
	Origin = 2, Size
}

enum eShapeOrientedRect {
	Center = 2, HalfSize, Angle
}