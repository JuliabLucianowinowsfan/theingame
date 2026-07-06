extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("action_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	var direction := JUMP_VELOCITY
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
# Mister hardworking developer, i very much respect you a lot and hope you dont get replaced by ai... but i dont know shit about what im doing, so the google AI overview made this code... Sorry coding god.
