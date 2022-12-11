class_name TickerBase extends Object

func reset():
	var previous = currentTick
	_reset_internal()
	return previous

func tick_max(delta, maxValue) -> bool:
	currentTick += delta
	
	return reset_on_max(maxValue)

func tick(delta) -> void:
	currentTick	+= delta

func reset_on_max(maxValue) -> bool:
	if currentTick >= maxValue:
		currentTick -= maxValue
		emit_signal("maxxed")
		return true
	# else
	
	return false


# Internally resets the ticker
func _reset_internal() -> void:
	printerr(USING_BASE_CLASS_ERROR)

var currentTick

signal maxxed

const USING_BASE_CLASS_ERROR = "You shouldn't use the base class ticker!"
