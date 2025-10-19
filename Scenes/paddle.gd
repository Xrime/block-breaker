extends Area2D

@export var speed :=400

func _process(delta: float) -> void:
	if Input.get_action_strength("Right"):
		position.x += speed*delta
	elif Input.get_action_strength("Left"):
		position.x -=speed*delta
	position.x =clamp(position.x,40.0,1152.0)
	
