extends Node

onready var NBT = load("res://NewBarkTown_day.tscn")
var map = null

func _ready():
	randomize()
	map = NBT.instance()
	add_child(map)
	$Ethan.raise()
	map.connect("DoorEntered", self, "on_DoorEntered")

func on_DoorEntered(next_room, X , Y):
	var newScreen = load(next_room)
	map = newScreen.instance()
	add_child(map)
	$Ethan.position.x = X
	$Ethan.position.y = Y
	$Ethan.raise()
	map.connect("DoorEntered", self, "on_DoorEntered")
	map.connect("WildEncounter", self, "on_WildEncounter")
	
func on_WildEncounter(): #add which pokemon appears to this
#	var newScreen = load("res://Battle.tscn")
#	map = newScreen.instance()
#	add_child(map)
	get_tree().change_scene("res://Battle.tscn")
#ADD HUD CONTROLS	
#	map.connect("WildEncounter", self, "on_WildEncounter")
