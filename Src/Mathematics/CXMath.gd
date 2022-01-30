class_name CXMath extends Object

# maps a value from [inMin ~ inMax] to [outMin ~ outMax]
static func remap(value, inMin, inMax, outMin, outMax):
	return outMin + ((outMax - outMin) / (inMax - inMin)) * (value - inMin)

static func remap01(value, outMin, outMax):
	return value * (outMax - outMin) + outMin

static func remap_neg11(value, outMin, outMax):
	return remap01(value * .5 + .5, outMin, outMax)

static func mini(a: int, b: int) -> int:
	return a if a < b else b

static func maxi(a: int, b: int) -> int:
	return a if a > b else b

static func absi(value: int) -> int:
	return -value if value < 0 else value

# exponential interpolation
static func eerp(a: float, b: float, t: float) -> float:
	return pow(a, 1.0 - t) * pow(b, t)

static func cubic01(x: float) -> float:
	return x * x * (3.0 - 2.0 * x)
