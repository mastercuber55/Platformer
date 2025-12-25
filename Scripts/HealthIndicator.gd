extends Node2D

func _ready() -> void:
	_healthUpdate(Global.health)
	Global.healthUpdate.connect(_healthUpdate)

@onready var hearts = [$First, $Second, $Third]

func _healthUpdate(health):	
	if health <= 0:
		for h in hearts: h.frame = 2
		get_tree().reload_current_scene()
		Global.health = 6
		return
	
	for i in range(3):
		if health >= (i + 1) * 2:
			hearts[i].frame = 0 # Full
		elif health == (i * 2) + 1:
			hearts[i].frame = 1 # Half
		else:
			hearts[i].frame = 2 # Empty
