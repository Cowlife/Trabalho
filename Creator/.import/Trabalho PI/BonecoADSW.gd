extends KinematicBody2D

var speed = 1000
var speed2 = 100
var velocity = Vector2()
var velocity2 = Vector2()
const MOVE_SPEED = 500


func _ready():
	rotation_degrees = 0
	pass

func get_input(delta):
    # Detect up/down/left/right keystate and only move when pressed.
    if Input.is_key_pressed(KEY_D):
        rotation += speed2 + delta;
    if Input.is_key_pressed(KEY_A):
        rotation -= speed2 + delta;
    if Input.is_key_pressed(KEY_S):
        position.y += MOVE_SPEED * delta	
    if Input.is_key_pressed(KEY_W):
        position.y -= MOVE_SPEED * delta
    velocity = velocity.normalized() * speed


	
func _physics_process(delta):
	get_input(delta)

		
