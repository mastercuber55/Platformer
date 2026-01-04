extends Node2D

@export_file("*.tscn") var nextLevel: String

func _on_area_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file(nextLevel)
