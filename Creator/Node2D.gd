extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_ChangeScene_pressed():
	get_tree().change_scene("res://Node2D(1).tscn")
	pass # Replace with function body.