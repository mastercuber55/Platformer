extends Node2D

@onready var shape = $StaticBody2D/CollisionShape2D
@onready var sprite = $AnimatedSprite2D
@onready var lever = $"../Lever"

func _ready() -> void:
	lever.leverUpdate.connect(_update)
	
func _update(isOn) -> void:
	shape.disabled = isOn
	sprite.frame = int(isOn)
