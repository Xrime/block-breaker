extends Area2D
@export var Level := 0
@onready var sprite = $CollisionShape2D/Sprite2D

func _ready() -> void:
	connect("area_entered",Callable(self ,"_on_hit"))
	if Level ==1:
		sprite.frame = 1
	elif Level == 2:
		sprite.frame =2
	elif Level == 3:
		sprite.frame =3
	elif Level == 4:
		sprite.frame =4
	elif Level == 5:
		sprite.frame =5
	elif Level == 6:
		sprite.frame =6
		
	elif Level == 0:
		sprite.frame =0
	elif Level == 7:
		sprite.frame =7
		
	
	
	
func _on_hit(area):
	if area.name =="Ball":
		queue_free()
