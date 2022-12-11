class_name CXMath

static func mini(a: int, b: int) -> int:
	return a if a < b else b

static func maxi(a: int, b: int) -> int:
	return a if a > b else b

static func absi(value: int) -> int:
	return -value if value < 0 else value
