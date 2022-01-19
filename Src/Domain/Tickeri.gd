class_name Tickeri
extends Object

func reset() -> void:
	tick = 0

func tick(delta: int, maxTick: int) -> bool:
	tick += delta

	if delta > maxTick:
		tick -= maxTick
		emit_signal("ticked")
		return true
	# else
	
	return false

var tick: int = 0

signal ticked
