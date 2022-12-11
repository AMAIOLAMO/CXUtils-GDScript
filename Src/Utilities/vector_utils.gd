class_name VectorUtils extends Object

static func as_length2D(vector: Vector2, length: float) -> Vector2:
	return vector.normalized() * length

static func as_length3D(vector: Vector3, length: float) -> Vector3:
	return vector.normalized() * length

static func range_lerp2D(value: Vector2, inMin: Vector2, inMax: Vector2, outMin: Vector2, outMax: Vector2) -> Vector2:
	return Vector2(
		range_lerp(value.x, inMin.x, inMax.x, outMin.x, outMax.x),
		range_lerp(value.y, inMin.y, inMax.y, outMin.y, outMax.y)
	)

static func range_lerp3D(value: Vector3, inMin: Vector3, inMax: Vector3, outMin: Vector3, outMax: Vector3) -> Vector3:
	return Vector3(
		range_lerp(value.x, inMin.x, inMax.x, outMin.x, outMax.x),
		range_lerp(value.y, inMin.y, inMax.y, outMin.y, outMax.y),
		range_lerp(value.z, inMin.z, inMax.z, outMin.z, outMax.z)
	)

static func min2D(a: Vector2, b: Vector2) -> Vector2:
	return Vector2(min(a.x, b.x), min(a.y, b.y))

static func max2D(a: Vector2, b: Vector2) -> Vector2:
	return Vector2(max(a.x, b.x), max(a.y, b.y))


static func min3D(a: Vector3, b: Vector3) -> Vector3:
	return Vector3(min(a.x, b.x), min(a.y, b.y), min(a.z, b.z))

static func max3D(a: Vector3, b: Vector3) -> Vector3:
	return Vector3(max(a.x, b.x), max(a.y, b.y), max(a.z, b.z))


static func from_angle(radians: float) -> Vector2:
	return Vector2.RIGHT.rotated(radians)

static func from_axis_angle3D(axis: Vector3, radians: float) -> Vector3:
	return Vector3.RIGHT.rotated(axis, radians)

static func sum2D(vector: Vector2) -> float:
	return vector.x + vector.y

static func sum3D(vector: Vector3) -> float:
	return vector.x + vector.y + vector.z
