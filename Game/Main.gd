extends Node
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var NBT = load("res://NewBarkTown_day.tscn")

func _ready():
	# Remove the current level
	##var level = root.get_node("Level")
	##root.remove_child(level)
	##level.call_deferred("free")
	# Add the next level
	var next_level = load("res://NewBarkTown_day.tscn")
	##var next_level = next_level.instance(
	$Main.add_child(next_level)
	
	get_tree().change_scene("res://NewBarkTown_day.tscn")
	##$Ethan.raise()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
