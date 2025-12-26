extends AnimatedSprite2D

@onready var player = %Player

signal leverUpdate(isOn: bool)

func _process(delta: float) -> void:
	
	var dist = global_position.distance_to(player.global_position)
	
	if Input.is_action_just_pressed("Interact") && dist < 36:
		frame = 2 if frame == 0 else 0
		leverUpdate.emit(frame != 0)
