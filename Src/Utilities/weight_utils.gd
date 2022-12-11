class_name WeightUtils

### == INTEGER == ###

static func get_totali(weights: Array) -> int:
	var total := 0
	
	for weight in weights:
		total += weight
	
	return total

static func select_indexi(value: int, weights: Array) -> int:
	var currentWeight := 0
	
	for i in weights.size():
		var weight: int = weights[i]
		currentWeight += weight
		if value > currentWeight: continue
		# else
		return i
	
	return weights.size() - 1

### == FLOAT == ###

static func get_totalf(weights: Array) -> float:
	var total := 0.0
	
	for weight in weights:
		total += weight
	
	return total

static func select_indexf(value: float, weights: Array) -> int:
	var currentWeight := 0.0
	
	for i in weights.size():
		var weight: int = weights[i]
		currentWeight += weight
		if value > currentWeight: continue
		# else
		return i
	
	return weights.size() - 1
