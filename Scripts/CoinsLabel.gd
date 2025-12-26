extends Label

func _ready() -> void:
	_coinsUpdate(Global.coins)
	Global.coinsUpdate.connect(_coinsUpdate)
	
func _coinsUpdate(coins):
	text = str(coins)
