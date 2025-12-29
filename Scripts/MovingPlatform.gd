extends AnimatableBody2D

const SPEED = 40
var direction = false
# false for left, true for right

@onready var raycast = $Raycast

func _physics_process(delta: float) -> void:
	
	if raycast.is_colliding():
		direction = !direction
		raycast.target_position.x *= -1
		
	position.x += (1 if direction else -1) * SPEED * delta
		
	
