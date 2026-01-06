extends AnimatableBody2D

@onready var sprite := $AnimatedSprite2D
@onready var coin := $Coin

func _on_body_entered(body: Node2D) -> void:
	
	var tween := create_tween()
	var og := position
	
	tween.tween_property(self, "position", og + Vector2(0, -8), 0.1)\
		.set_trans(Tween.TRANS_QUAD)\
		.set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "position", og, 0.1)\
		.set_trans(Tween.TRANS_QUAD)\
		.set_ease(Tween.EASE_OUT)
		
	tween.parallel().tween_property(coin, "position", coin.position + Vector2(0, -16), 0.1)\
		.set_trans(Tween.TRANS_QUAD)\
		.set_ease(Tween.EASE_OUT)
	tween.parallel().tween_property(coin, "modulate:a", 0.0, 0.2)
	tween.tween_callback(coin.queue_free)
		
	Global.coins += 1
	sprite.frame = 1
	$Area2D.disconnect("body_entered", _on_body_entered)
