extends Node

var Pause = false

func _ready() -> void:
	if Pause == false and Input.is_action_pressed("action_pause"):
		Pause = true
	elif Pause == true and Input.is_action_pressed("action_pause"):
		Pause = false
