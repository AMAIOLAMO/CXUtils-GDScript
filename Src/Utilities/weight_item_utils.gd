class_name WeightItemUtils

### == INTEGER == ###

static func calculate_totali(weightItems: Array, getWeightFunc: String = DEFAULT_WEIGHT_FUNC) -> int:
	var total := 0
	
	for item in weightItems:
		total += item.call(getWeightFunc)
	
	return total

static func select_itemi(value: int, weightItems: Array, getWeightFunc: String = DEFAULT_WEIGHT_FUNC):
	var currentWeight := 0
	
	for item in weightItems:
		currentWeight += item.call(getWeightFunc)
		
		if value > currentWeight: continue
		# else
		return item
	# else use last
	
	return weightItems.back()

static func select_indexi(value: int, weightItems: Array, getWeightFunc: String = DEFAULT_WEIGHT_FUNC) -> int:
	var currentWeight := 0
	
	for i in weightItems.size():
		var item = weightItems[i]
		currentWeight += item.call(getWeightFunc)
		
		if value > currentWeight: continue
		# else
		return i
	# else use last
	
	return weightItems.size() - 1



### == FLOAT == ###

static func calculate_totalf(weightItems: Array, getWeightFunc: String = DEFAULT_WEIGHT_FUNC) -> float:
	var total := 0.0
	
	for item in weightItems:
		total += item.call(getWeightFunc)
	
	return total

static func select_itemf(value: float, weightItems: Array, getWeightFunc: String = DEFAULT_WEIGHT_FUNC):
	var currentWeight := 0.0
	
	for item in weightItems:
		currentWeight += item.call(getWeightFunc)
		
		if value > currentWeight: continue
		# else
		return item
	# else use last
	
	return weightItems.back()

static func select_indexf(value: float, weightItems: Array, getWeightFunc: String = DEFAULT_WEIGHT_FUNC) -> int:
	var currentWeight := 0.0
	
	for i in weightItems.size():
		var item = weightItems[i]
		currentWeight += item.call(getWeightFunc)
		
		if value > currentWeight: continue
		# else
		return i
	# else use last
	
	return weightItems.size() - 1

#static func select_rand_index(weightItems: Array, totalWeight: int, weightFunc: String = "get_weight") -> int:
#	var randValue := randi() % totalWeight
#
#	return WeightItemUtils.select_itemi(randValue, weightItems, weightFunc)


#static func index_from_weight(weights: Array, totalWeight: int) -> int:
#	var randValue := randi() % totalWeight
#
#	var currentWeight := 0
#
#	for i in weights.size():
#		var weight: int = weights[i]
#		currentWeight += weight
#
#		if randValue > currentWeight: continue
#		# else
#		return i
#	# else not possible
#
#	printerr("the impossible happened with weights!")
#	return -1


const DEFAULT_WEIGHT_FUNC = "get_weight"
