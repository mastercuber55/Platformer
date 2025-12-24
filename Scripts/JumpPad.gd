extends Area2D

@onready var player = $"../../Player"
@onready var sprite = $"../AnimatedSprite2D"

func _on_body_entered(body: Node2D) -> void:
	
	if sprite.frame != 1:
		return 
	
	sprite.frame = 0
	player.velocity.y = -400
	
	await get_tree().create_timer(1.0).timeout
	sprite.frame = 1
