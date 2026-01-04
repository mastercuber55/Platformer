extends Area2D

func _on_body_entered(body: Node2D) -> void:	
	Global.health = 0
	# TODO: make it so that when the player falls below the ground, it wraps to the top of the map and falls down to the last checkpoint like human fall flat.
