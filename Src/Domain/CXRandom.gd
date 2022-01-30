class_name CXRandom extends Object

static func rand_point_in_circle(radius: float = 1.0) -> Vector2:
	var resultRadius = radius * sqrt(randf())
	var resultTheta = randf() * 2.0 * PI
	
	return Vector2(
		resultRadius * cos(resultTheta),
		resultRadius * sin(resultTheta)
	)

static func rand_point_in_circle_range(minRange: float, maxRange: float) -> Vector2:
	var point := rand_point_in_circle()
	var direction := point.normalized()
	return point * (maxRange - minRange) + direction * minRange

static func randi_range(minValue: int, maxValue: int) -> int:
	var diff := maxValue - minValue
	return minValue if diff == 0 else randi() % diff + minValue

static func index_from_weight(weights: Array, totalWeight: int) -> int:
	var randValue := randi() % totalWeight
	
	var currentWeight := 0
	
	for i in weights.size():
		var weight: int = weights[i]
		currentWeight += weight
		
		if randValue > currentWeight: continue
		# else
		return i
	# else not possible
	
	printerr("the impossible has happened with weights!")
	return -1

static func index_from_weight_items(weightItems: Array, totalWeight: int, weightFunc: String = "get_weight") -> int:
	var randValue := randi() % totalWeight

	return WeightItemUtils.select_itemi(randValue, weightItems, weightFunc)
