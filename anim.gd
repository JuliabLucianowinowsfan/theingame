extends CharacterBody2D

func anim_jul():
	if velocity.y == 0 and velocity.x == 0:
		$"animations Juli".play("idle")
	if velocity.y > 0:
		$"animations Juli".play("fall")
