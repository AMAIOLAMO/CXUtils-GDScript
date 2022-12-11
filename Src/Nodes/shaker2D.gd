# A shaker that offsets the target node
class_name Shaker2D extends Node2D

func _ready() -> void:
	_updateProcess(_processMode == 0)

# Shakes the target node2D with intensity and a fade time
func shake(intensity: float, fadeTime: float) -> void:
	_maxIntensity = intensity
	_currentIntensity = intensity
	
	_maxFadeTime = fadeTime
	_currentFadeTimeLeft = fadeTime

func _process(delta: float) -> void:
	_doShake(delta)

func _physics_process(delta: float) -> void:
	_doShake(delta)

func _doShake(delta: float) -> void:
	if _currentFadeTimeLeft <= 0.0:
		return
	# else

	_currentFadeTimeLeft -= delta

	var rawProgress := 1.0 - (_currentFadeTimeLeft / _maxFadeTime)

	var manipulatedProgress := _manipulateProgress(rawProgress)

	var currentIntensity = lerp(_maxIntensity, 0.0, manipulatedProgress)

	_applyShake(currentIntensity, rawProgress, manipulatedProgress)


## manipulates the rawProgress and returns a manipuatedProgress
func _manipulateProgress(rawProgress: float) -> float:
	return rawProgress

## applies the actual shake on the object (manual implementation required)
func _applyShake(currentIntensity: float, rawProgress: float, manipulatedProgress: float) -> void:
	printerr("_handShake Not implemented! this [Shake2D] is an abstract class and can only be inherited")

func _updateProcess(useIdle: bool) -> void:
		set_process(useIdle)
		set_physics_process(not useIdle)

func _setProcessMode(value: int) -> void:
	_processMode = value

	_updateProcess(_processMode == 0)

# var offset: Vector2

var _currentIntensity: float
var _maxIntensity: float

var _currentFadeTimeLeft: float
var _maxFadeTime: float

export(int, "Idle", "Physics") var _processMode: int setget _setProcessMode
