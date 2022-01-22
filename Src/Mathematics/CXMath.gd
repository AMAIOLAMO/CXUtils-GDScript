class_name CXMath
extends Object

# maps a value from [inMin ~ inMax] to [outMin ~ outMax]
static func map(value, inMin, inMax, outMin, outMax):
	return outMin + ((outMax - outMin) / (inMax - inMin)) * (value - inMin)

static func map01(value, outMin, outMax):
	return value * (outMax - outMin) + outMin

static func map_neg11(value, outMin, outMax):
	return map01(value * .5 + .5, outMin, outMax)

static func mini(a: int, b: int) -> int:
	return a if a < b else b

static func maxi(a: int, b: int) -> int:
	return a if a > b else b

static func absi(value: int) -> int:
	return -value if value < 0 else value
