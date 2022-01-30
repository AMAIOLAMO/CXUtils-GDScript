class_name Tickeri extends Object

func reset() -> void:
	currentTick = 0

func tick(delta: int, maxTick: int) -> bool:
	currentTick += delta

	if currentTick > maxTick:
		currentTick -= maxTick
		emit_signal("ticked")
		return true
	# else
	
	return false

var currentTick: int = 0

signal ticked
