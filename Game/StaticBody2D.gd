extends StaticBody2D
signal DoorEntered(id)
signal WildEncounter()
var flag = false


func _on_NBT_body_entered(body):
	if flag == true:
		emit_signal("DoorEntered", "res://NewBarkTown_day.tscn", 10, 156)
		queue_free()
		flag = false

func _on_NBT_body_exited(body):
	flag = true


func _on_EncounterTimer_timeout():
	var check = rand_range(1, 4)
	print(int(check))
	if int(check) == 3:
		emit_signal("WildEncounter")
		queue_free()
#add that this happens when a random number between 
#say 1-10 hits 10 exactly	
#	get_tree().change_scene("res://Battle.tscn")


func _on_TallGrass_body_entered(body):
	$EncounterTimer.start()


func _on_TallGrass_body_exited(body):
	$EncounterTimer.stop()
