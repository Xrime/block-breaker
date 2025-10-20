extends Area2D

@export var speed :=300.0
var velocity  =Vector2.ZERO
var launched =false

func _process(delta: float) -> void:
	if not launched:
		var paddle=get_tree().get_first_node_in_group("Paddle")
		position = paddle.position - Vector2(0,20)
		if Input.is_action_just_pressed("Space"):
			velocity=Vector2(randf_range(-0.5,0.5),-1).normalized()
			launched =true
	else :
		position += velocity*delta
		if position.x < 10 or position.x>1152:
			velocity.x *=-1
		if position.y <10:
			velocity.y *=-1
		if position.y >600:
			get_tree().reload_current_scene()
