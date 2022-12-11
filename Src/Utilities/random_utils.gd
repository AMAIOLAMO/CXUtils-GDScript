class_name RandomUtils

static func randi_range(minValue: int, maxValue: int) -> int:
	var diff := maxValue - minValue
	return minValue if diff == 0 else randi() % diff + minValue

# =============== VECTORS =============== #

# Returns a random unit vector
static func unit_direction() -> Vector2:
	return Vector2.RIGHT.rotated(angle_rad())

# Returns a random point / vector in a specified radius of a circle
static func circle(radius: float = 1.0) -> Vector2:
	var resultRadius = radius * sqrt(randf())
	var resultTheta = randf() * 2.0 * PI
	
	return Vector2(
		resultRadius * cos(resultTheta),
		resultRadius * sin(resultTheta)
	)

static func circle_ranged(minRange: float, maxRange: float) -> Vector2:
	var direction := circle()
	return direction * (maxRange - minRange) + direction * minRange


# =============== ANGLES =============== #

# Returns a random positive angle in radians
static func angle_rad() -> float:
	return rand_range(0.0, TAU)

# Returns a random negative or positive angle in radians
static func unit_angle_rad() -> float:
	return rand_range(-TAU, TAU)

# Returns a random positive angle in degrees
static func angle_deg() -> float:
	return rand_range(0.0, 360.0)

# Returns a random negative or positive angle in degrees
static func unit_angle_deg() -> float:
	return rand_range(-360.0, 360.0)
