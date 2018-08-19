extends StaticBody2D
signal DoorEntered(id)
var flag = false


func _on_NBT_body_entered(body):
	if flag == true:
		emit_signal("DoorEntered", "res://NewBarkTown_day.tscn", 10, 156)
		queue_free()
		flag = false

func _on_NBT_body_exited(body):
	flag = true