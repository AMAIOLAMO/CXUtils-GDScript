class_name WeightItemUtils
extends Object

const DEFAULT_WEIGHT_FUNC = "get_weight"

### == INTEGER == ###

static func get_totali(weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC) -> int:
	var total := 0
	
	for item in weightItems:
		total += item.call(weightFunc)
	
	return total

static func select_itemi(value: int, weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC):
	var currentWeight := 0
	
	for item in weightItems:
		currentWeight += item.call(weightFunc)
		
		if value > currentWeight: continue
		# else
		return item
	# else use last
	
	return weightItems.back()

static func select_indexi(value: int, weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC) -> int:
	var currentWeight := 0
	
	for i in weightItems.size():
		var item = weightItems[i]
		currentWeight += item.call(weightFunc)
		
		if value > currentWeight: continue
		# else
		return i
	# else use last
	
	return weightItems.size() - 1

### == FLOAT == ###

static func get_totalf(weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC) -> float:
	var total := 0.0
	
	for item in weightItems:
		total += item.call(weightFunc)
	
	return total

static func select_itemf(value: float, weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC):
	var currentWeight := 0.0
	
	for item in weightItems:
		currentWeight += item.call(weightFunc)
		
		if value > currentWeight: continue
		# else
		return item
	# else use last
	
	return weightItems.back()

static func select_indexf(value: float, weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC) -> int:
	var currentWeight := 0.0
	
	for i in weightItems.size():
		var item = weightItems[i]
		currentWeight += item.call(weightFunc)
		
		if value > currentWeight: continue
		# else
		return i
	# else use last
	
	return weightItems.size() - 1
