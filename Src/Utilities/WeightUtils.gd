class_name WeightUtils
extends Object

static func get_total_weight(weights: Array) -> int:
	var total := 0
	
	for weight in weights:
		total += weight
	
	return total

static func select_index(value: int, weights: Array, totalWeight: int) -> int:
	var currentWeight := 0
	
	for i in weights.size():
		var weight: int = weights[i]
		currentWeight += weight
		if value > currentWeight: continue
		# else
		return i
	
	printerr(
		"given a total weight larger than the given weights total, given weight: %s, actual weight: %s" %
		[totalWeight, get_total_weight(weights)]
	)
	return -1
