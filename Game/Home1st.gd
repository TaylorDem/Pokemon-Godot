extends StaticBody2D
signal DoorEntered(id)
var flag = false


func _on_Exit_body_entered(body):
	if flag == true:
		emit_signal("DoorEntered", "res://NewBarkTown_day.tscn", 250, 100)
		queue_free()
		flag = false

func _on_Exit_body_exited(body):
	flag = true
