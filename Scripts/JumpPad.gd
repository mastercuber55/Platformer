extends Node2D

@export var velocity := 400
@export var cooldownMS := 0.5

@onready var sprite := $AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	if sprite.frame != 1:
		return 
	
	sprite.frame = 0
	body.velocity.y = -velocity
	
	await get_tree().create_timer(cooldownMS).timeout
	sprite.frame = 1
