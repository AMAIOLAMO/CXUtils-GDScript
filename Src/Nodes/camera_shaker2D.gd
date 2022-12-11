class_name CameraShaker2D extends Shaker2D

func _applyShake(currentIntensity: float, rawProgress: float, manipulatedProgress: float) -> void:
	_targetCamera.offset = RandomUtils.circle(currentIntensity)
	_targetCamera.rotation = RandomUtils.unit_angle_rad() * _maxRotationIntensity * (1 - manipulatedProgress)

export(NodePath) onready var _targetCamera = get_node(_targetCamera) as Camera2D

export(float, 0.0, 1.0) var _maxRotationIntensity: float = 1
