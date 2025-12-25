extends Node

signal coinsUpdate(newCoins)
signal healthUpdate(newHealth)

var coins = 0:
	set(value):
		coins = value
		coinsUpdate.emit(coins)
		
var health = 6:
	set(value):
		health = value
		healthUpdate.emit(health)
		
