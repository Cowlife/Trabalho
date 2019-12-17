extends KinematicBody2D

export (int) var run_speed
export (int) var jump_speed
export (int) var gravity

enum {IDLE, RUN, JUMP}
var velocity = Vector2()
var state
var anim
var new_anim

func _ready():
	change_state(IDLE)

func change_state(new_state):
	state = new_state
	match state:
		IDLE:
			new_anim = 'idle'
		RUN:
			new_anim = 'run'
		JUMP:
			new_anim = 'jump_up'

func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	var jump = Input.is_action_just_pressed('ui_select')

	if jump and is_on_floor():
		change_state(JUMP)
		velocity.y = jump_speed
	if right:
		change_state(RUN)
		velocity.x += run_speed
	if left:
		change_state(RUN)
		velocity.x -= run_speed
	$Sprite.flip_h = velocity.x < 0
	if !right and !left and state == RUN:
		change_state(IDLE)

func _process(delta):
	get_input()
	if new_anim != anim:
		anim = new_anim
		$AnimationPlayer.play(anim)

func _physics_process(delta):
	velocity.y += gravity * delta
	if state == JUMP:
		if is_on_floor():
			change_state(IDLE)
	velocity = move_and_slide(velocity, Vector2(0, -1))
	#move_and_slide(velocity, Vector2(0, -1))

	if position.y > 600:
		get_tree().reload_current_scene()