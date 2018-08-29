extends Node2D
#MUST ADD THAT WHEN HEATLH HITS 0 OR WHATEVER IT CHANGES TO MAIN SCENE AGAIN.
var enemy
var fighter
func _ready():
	#LOAD THE POKEMON THAT GETS SHOWN
	var newSprite = load("res://EnemyAmpharos.tscn")
	enemy = newSprite.instance()
	add_child(enemy)
	newSprite = load("res://AllyScizor.tscn")
	fighter = newSprite.instance()
	add_child(fighter)
	#LOAD THE POKEMON STATS ^^
	
	
