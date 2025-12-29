extends CharacterBody2D


const SPEED = 1600.0
var direction = false
# false for left, true for right

@onready var sprite = $AnimatedSprite2D
@onready var raycastBottom = $Bottom
@onready var raycastSideways = $Sideways

func _physics_process(delta: float) -> void:
	
	#if not is_on_floor():
		#velocity += get_gravity() * delta
	
	if not raycastBottom.is_colliding() || raycastSideways.is_colliding():
		direction = !direction
		scale.x *= -1
		
	velocity.x = (1 if direction else -1) * SPEED * delta

	move_and_slide()


func _on_body_entered(body: Node2D) -> void:
	if body != $"../Player":
		return
	Global.health -= 1
