extends AudioStreamPlayer

# Declare member variables here. Examples:
# var a 
# var b 

# Called when the node enters the scene tree for the first time.
 # Replace with function body.
var song1
var song2
var currentSong = song1

func _ready():
   set_process(true)
   song2 = load("res://ChillingMusic.wav")
   
func _process(delta):
   if(self.is_playing() != true):
      if(self.get_stream() == song1):
         self.set_stream(song2)
      else:
         self.set_stream(song1)
      self.play()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
