class_name CXMath
extends Object

# maps a value from [inMin ~ inMax] to [outMin ~ outMax]
static func map(value, inMin, inMax, outMin, outMax):
	return outMin + ((outMax - outMin) / (inMax - inMin)) * (value - inMin)
