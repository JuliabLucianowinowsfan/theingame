extends Node

func _on_body_entered(body) -> void:
	if body is CharacterBody2D:
		body.velocity.y =  -1200
		get_parent().get_node("AnimatedSprite2D").play("default")
