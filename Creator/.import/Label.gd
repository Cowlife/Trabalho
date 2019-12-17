extends Button

# Declare member variables here. Examples:
var a = 0
# var b = "text"

# Called when the node enters the scene tree for the first time.
func ready():
	pass


func _on_Button_pressed():
	a +=1
	get_node("Label").text = "Counts ="+ str(a) 
	pass # Replace with function body.
