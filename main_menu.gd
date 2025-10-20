extends Node2D

var scene :PackedScene =preload("res://Scenes/main_menu1.tscn")

func _on_button_pressed() -> void:
		var scene_instance = scene.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	
