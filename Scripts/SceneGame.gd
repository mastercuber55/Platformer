extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DiscordRPC.app_id = 1411296176950480946 # Application ID
	DiscordRPC.details = "Platformerr!!"
	DiscordRPC.state = "Checkpoint 23/23"
	DiscordRPC.large_image = "example_game" # Image key from "Art Assets"
	DiscordRPC.large_image_text = "Try it now!"
	DiscordRPC.small_image = "boss" # Image key from "Art Assets"
	DiscordRPC.small_image_text = "Fighting the end boss! D:"

	DiscordRPC.start_timestamp = int(Time.get_unix_time_from_system()) # "02:46 elapsed"
	# DiscordRPC.end_timestamp = int(Time.get_unix_time_from_system()) + 3600 # +1 hour in unix time / "01:00:00 remaining"

	DiscordRPC.refresh() # Always refresh after changing the values!


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
