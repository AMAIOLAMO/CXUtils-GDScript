class_name WeightItemUtils
extends Object

const DEFAULT_WEIGHT_FUNC = "get_weight"

static func get_total_weight(weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC) -> int:
	var total := 0
	
	for item in weightItems:
		total += item.call(weightFunc)
	
	return total

static func select_item(value: int, weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC):
	var currentWeight := 0
	
	for item in weightItems:
		currentWeight += item.call(weightFunc)
		
		if value > currentWeight: continue
		# else
		return item
	# else not possible
	
	printerr("the value is higher than the total value, value: %s" % value)
	return null

static func select_index(value: int, weightItems: Array, weightFunc: String = DEFAULT_WEIGHT_FUNC) -> int:
	var currentWeight := 0
	
	for i in weightItems.size():
		var item = weightItems[i]
		currentWeight += item.call(weightFunc)
		
		if value > currentWeight: continue
		# else
		return i
	# else not possible
	
	printerr("the value is higher than the total value, value: %s" % value)
	return -1
