extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _on_Button_pressed():
	get_tree().change_scene("res://.import//Scenario.tscn")
	pass # Replace with function body.

func _on_Button2_pressed():
	get_tree().change_scene("res://.import//Options.tscn")
	pass # Replace with function body.

func _on_Button3_pressed():
	get_tree().change_scene("res://.import//Multiplayer(1).tscn")
	pass # Replace with function body.

func _on_Button4_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_AudioStreamPlayer_ready():
	pass # Replace with function body.
