#macro SHAPE_TYPE 0

enum eShapeType {
	Line,LineSegment,Circle,Rect,OrientedRect
}

enum eShapeLine {
	Base = 1, Direction
}

enum eShapeLineSegment {
	Point1 = 1, Point2
}

enum eShapeCircle {
	Center = 1, Radius
}

enum eShapeRect {
	Origin = 1, Size
}

enum eShapeOrientedRect {
	Center = 1, HalfSize, Angle
}