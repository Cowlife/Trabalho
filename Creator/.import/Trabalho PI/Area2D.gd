extends StaticBody2D


export var ball_dir = 1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _on_CollisionShape2D_tree_entered(area):
	if area.get_name() == "ball":
		#oops, ball went out of game place, reset
		area.reset()
