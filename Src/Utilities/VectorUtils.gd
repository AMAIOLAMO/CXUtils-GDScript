class_name VectorUtils extends Object

static func as_length(vector: Vector2, length: float) -> Vector2:
	return vector.normalized() * length

static func min2(a: Vector2, b: Vector2) -> Vector2:
	return Vector2(min(a.x, b.x), min(a.y, b.y))

static func min3(a: Vector3, b: Vector3) -> Vector3:
	return Vector3(min(a.x, b.x), min(a.y, b.y), min(a.z, b.z))

static func max2(a: Vector2, b: Vector2) -> Vector2:
	return Vector2(max(a.x, b.x), max(a.y, b.y))

static func max3(a: Vector3, b: Vector3) -> Vector3:
	return Vector3(max(a.x, b.x), max(a.y, b.y), max(a.z, b.z))

static func from_angle(phi: float) -> Vector2:
	return Vector2.RIGHT.rotated(phi)

static func from_axis_angle(axis: Vector3, phi: float) -> Vector3:
	return Vector3.RIGHT.rotated(axis, phi)

static func sum2(vector: Vector2) -> float:
	return vector.x + vector.y

static func sum3(vector: Vector3) -> float:
	return vector.x + vector.y + vector.z
