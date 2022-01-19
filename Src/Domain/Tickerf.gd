class_name Tickerf
extends Object

func reset() -> void:
	tick = 0

func tick(delta: float, maxTick: float) -> bool:
	tick += delta

	if delta > maxTick:
		tick -= maxTick
		emit_signal("ticked")
		return true
	# else
	
	return false

var tick: float = 0.0

signal ticked
