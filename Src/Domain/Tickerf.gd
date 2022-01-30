class_name Tickerf extends Object

func reset() -> void:
	currentTick = 0

func tick(delta: float, maxTick: float) -> bool:
	currentTick += delta

	if currentTick > maxTick:
		currentTick -= maxTick
		emit_signal("ticked")
		return true
	# else
	
	return false

var currentTick: float = 0.0

signal ticked
