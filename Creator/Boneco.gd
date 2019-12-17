extends KinematicBody2D

var speed = 1000
var speed2 = 100
var velocity = Vector2()
const MOVE_SPEED = 500

func get_input(delta):
    # Detect up/down/left/right keystate and only move when pressed.

    if Input.is_key_pressed(KEY_RIGHT):
        rotation += speed2 + delta; #super fast *
    if Input.is_key_pressed(KEY_LEFT):
        rotation -= speed2 + delta;
    if Input.is_key_pressed(KEY_DOWN):
        position.y += MOVE_SPEED * delta	
    if Input.is_key_pressed(KEY_UP):
        position.y -= MOVE_SPEED * delta
    velocity = velocity.normalized() * speed

	
func _physics_process(delta):
    get_input(delta)    

	
"""
extends KinematicBody2D

export (PackedScene) var Bullet
export (int) var speed

var velocity = Vector2()

func get_input():
	# add these actions in Project Settings -> Input Map
	velocity = Vector2()
	if Input.is_action_pressed('backward'):
		velocity = Vector2(-speed/3, 0).rotated(rotation)
	if Input.is_action_pressed('forward'):
		velocity = Vector2(speed, 0).rotated(rotation)
	if Input.is_action_just_pressed('mouse_click'):
		shoot()

func shoot():
	# "Muzzle" is a Position2D placed at the barrel of the gun
	var b = Bullet.instance()
	b.start($Muzzle.global_position, rotation)
	get_parent().add_child(b)

func _physics_process(delta):
	get_input()
	var dir = get_global_mouse_position() - global_position
	# Don't move if too close to the mouse pointer
	if dir.length() > 5:
		rotation = dir.angle()
		velocity = move_and_slide(velocity)	"""