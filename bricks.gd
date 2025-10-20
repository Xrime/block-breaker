extends Node2D

@export var brick_scene: PackedScene
@export var rows :=5
@export var cols :=10
@export var spacing := Vector2(70,25)

func _ready() -> void:
	for r in range(rows):
		for c in range(cols):
			var brick = brick_scene.instantiate()
			brick.position =Vector2(60 +c*spacing.x,60 + r * spacing.y)
			add_child(brick)
