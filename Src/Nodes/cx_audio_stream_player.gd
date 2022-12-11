class_name CxAudioStreamPlayer extends AudioStreamPlayer

func play_with_pitch(pitch: float, fromPosition: float = 0.0) -> void:
	pitch_scale = pitch
	play(fromPosition)

func play_with_rand_pitch(minValue: float, maxValue: float, fromPosition: float = 0.0) -> void:
	play_with_pitch(rand_range(minValue, maxValue), fromPosition)

func set_rand_range_pitch(minValue: float, maxValue: float) -> void:
	pitch_scale = rand_range(minValue, maxValue)

func play_with_volume(volume: float, fromPosition: float = 0.0) -> void:
	volume_db = volume
	play(fromPosition)
