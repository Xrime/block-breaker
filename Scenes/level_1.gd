extends Node2D

@export var brick_scene: PackedScene
@export var rows := 3
@export var columns := 6
@export var spacing_x := 80
@export var spacing_y := 40
@export var start_position := Vector2(100, 100)
@export var next_level: PackedScene
@export var Level :=0
var bricks: Array = [] 

func _ready() -> void:
	for row in range(rows):
		for column in range(columns):
			var brick = brick_scene.instantiate()
			brick.position = start_position + Vector2(column * spacing_x, row * spacing_y)
			brick.Level = Level
			add_child(brick)
			bricks.append(brick) 

func _process(delta: float) -> void:
	bricks = bricks.filter(is_instance_valid)
	if bricks.is_empty():
		print("All bricks gone — move to next level")
		var scene_instance = next_level.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()

		get_tree().current_scene = scene_instance
