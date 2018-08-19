extends Node
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var NBT = load("res://NewBarkTown_day.tscn")
var map = null

func _ready():
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
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
