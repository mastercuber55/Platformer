extends Node

signal coinsUpdate(newCoins)

var coins = 0:
	set(value):
		coins = value
		coinsUpdate.emit(coins)
		
