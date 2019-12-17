extends Panel

func _ready():
    get_node("Button")

func _on_goto_scene_pressed():
	get_tree().change_scene("res://scene_b.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.



