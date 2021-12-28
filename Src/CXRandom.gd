extends Object

class_name CXRandom

static func rand_point_in_circle(radius: float) -> Vector2:
	var resultRadius = radius * sqrt(randf())
	var resultTheta = randf() * 2.0 * PI
	
	return Vector2(
		resultRadius * cos(resultTheta),
		resultRadius * sin(resultTheta)
	)

static func randi_range(minValue: int, maxValue: int) -> int:
	var diff := maxValue - minValue
	return minValue if diff == 0 else randi() % diff + minValue

static func index_from_weight(weights: Array, totalWeight: int) -> int:
	var randValue := randi() % totalWeight
	
	var currentWeight := 0
	
	for i in weights.size():
		var weight: int = weights[i]
		currentWeight += weight
		
		if randValue > currentWeight:
			continue
		# else
		return i
	# else not possible
	
	printerr("the non possible has happened with weights!")
	return -1
