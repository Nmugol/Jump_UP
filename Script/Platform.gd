extends KinematicBody2D

export var gravity :float = 6000

var _velocity = Vector2.ZERO

func _physics_process(delta):
	
	_velocity.y = gravity * delta
	
	move_and_slide(_velocity,Vector2.UP)
