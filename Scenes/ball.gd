extends Area2D

@export var speed :=300.0
var velocity  =Vector2.ZERO
var launched =false
@onready var sprite = $CollisionShape2D/Sprite2D
@export var level := 0

func  _ready() -> void:
	connect("area_entered", Callable(self ,"_on_area_entered"))
	if level == 1:
		sprite.frame = 0
	elif level == 2:
		sprite.frame = 1
	elif level == 3:
		sprite.frame = 2
	elif level == 4:
		sprite.frame = 3
	elif level == 5:
		sprite.frame = 4
	elif level == 6:
		sprite.frame = 5
	elif level == 7:
		sprite.frame = 6	
	elif level == 8:
		sprite.frame = 7
	elif level == 9:
		sprite.frame = 8
	elif level == 10:
		sprite.frame = 9
func _process(delta: float) -> void:
	if not launched:
		var paddle=get_tree().get_first_node_in_group("Paddle")
		position = paddle.position - Vector2(0,20)
		if Input.is_action_just_pressed("Space"):
			velocity=Vector2(randf_range(-0.5,0.5),-1).normalized()
			launched =true
	else :
		position += velocity*delta
		
		if position.x<10 or position.x > 1150:
			velocity.x*=-1
		if position.y <10:
			velocity.y *=-1
		if position.y >600:
			get_tree().reload_current_scene()
			
func  _on_area_entered(area):
	if area.is_in_group("brick"):
		area.queue_free()
		velocity.y*=-1
	elif area.is_in_group("Paddle"):
		var paddle = area
		var hit_position =(position.x - paddle.position.x) / (paddle.get_node("CollisionShape2D").shape.extents.x)
		velocity =Vector2(hit_position, -1).normalized()*speed
	
