extends AudioStreamPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
var song1
var song2
var currentSong = song1

func _ready():
   set_process(true)
   song2 = load("res://Oliver e Benji 1ª Abertura - Portugal.wav")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
