extends StaticBody2D
signal DoorEntered(id)
var flag = false


func _on_ExitDoor_body_entered(body):
	if flag == true:
		emit_signal("DoorEntered", "res://NewBarkTown_day.tscn", 138 , 70)
		queue_free()
		flag = false

func _on_ExitDoor_body_exited(body):
	flag = true
