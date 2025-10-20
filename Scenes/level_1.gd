extends Node2D

@export var brick_scene : PackedScene
@export var rows:=3
@export var  columns := 6
@export var spacing_x :=80
@export var spacing_y :=40
@export var start_position := Vector2(100,100)

func _ready() -> void:
	for row in range(rows):
		for colunn in range(columns) :
			var brick = brick_scene.instantiate()
			brick.position=start_position+Vector2(colunn* spacing_x, row *spacing_y)
			add_child(brick)
