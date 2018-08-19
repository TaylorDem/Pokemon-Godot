extends StaticBody2D
signal DoorEntered(id)
var flag = false
 
func _ready():
	pass

func _on_ElmDoor_body_entered(body):
	if flag == true:
		emit_signal("DoorEntered", "res://ProfElmHut.tscn", 115, 193)
		queue_free()
		flag = false

func _on_ElmDoor_body_exited(body):
	flag = true


func _on_HomeDoor_body_entered(body):
	emit_signal("DoorEntered", "res://Home1st.tscn")
	queue_free()

