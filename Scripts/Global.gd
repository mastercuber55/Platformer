extends Node

signal coinsUpdate(newCoins)
signal healthUpdate(newHealth)

var coins = 0:
	set(value):
		coins = value
		DiscordRPC.state = "Has " + str(coins) + " Coins 🪙"
		DiscordRPC.refresh()
		coinsUpdate.emit(coins)
		
var health = 6:
	set(value):
		health = value
		
		if health == 0:
			get_tree().reload_current_scene()
			Global.health = 6
		
		healthUpdate.emit(health)
	
func _on_scene_changed(newScene: Node2D):
	DiscordRPC.details = "In Game Scene: " + newScene.name
	DiscordRPC.refresh()

func _on_node_added(node):
	if node.get_parent() == get_tree().root && node != self:
		_on_scene_changed(node)

func _ready() -> void:
	
	get_tree().node_added.connect(_on_node_added)
	
	DiscordRPC.app_id = 1411296176950480946 # Application ID
	DiscordRPC.start_timestamp = int(Time.get_unix_time_from_system())
	
	DiscordRPC.details = "In Title Scene"
	DiscordRPC.refresh()
	# Let the Scenes refresh this...
