extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"



# Called when the node enters the scene tree for the first time.
func _on_AudioStreamPlayer_ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered():
	pass # Replace with function body.


func _on_Goal_area_entered(area):
	if area.get_name() == "Bola":
		#oops, ball went out of game place, reset
		area.reset()
	pass # Replace with function body.


func _on_Goal2_area_entered(area):
	if area.get_name() == "Bola":
		#oops, ball went out of game place, reset
		area.reset()
	pass # Replace with function body.
