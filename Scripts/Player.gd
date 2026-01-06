extends CharacterBody2D

@export var SPEED := 10000.0
@export var JUMP_VELOCITY := -200.0

@onready var sprite := $AnimatedSprite2D

func _physics_process(delta: float) -> void:

	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("MoveLeft", "MoveRight")
	
	if direction:
		sprite.play()
		velocity.x = direction * SPEED * delta
		if direction > 0:
			sprite.flip_h = true
		if direction < 0:
			sprite.flip_h = false
	else:
		sprite.stop()
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
