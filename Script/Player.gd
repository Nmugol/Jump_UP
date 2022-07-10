extends KinematicBody2D

export var move_speed :float = 400
export var up_speed :float= 100
export var max_up_speed :float= 1000

var _velocity = Vector2.ZERO

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		_velocity.x += -move_speed * delta
		
	if Input.is_action_pressed("ui_right"):
		_velocity.x += move_speed * delta
	
	_velocity.y += -up_speed * delta
	if _velocity.y > max_up_speed * delta:
		_velocity.y = max_up_speed*delta
	
	move_and_slide(_velocity,Vector2.UP)
	
