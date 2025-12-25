extends Node2D

func _on_body_entered(body: Node2D) -> void:
	if body != %Player:
		return
		
	Global.health -= 1
