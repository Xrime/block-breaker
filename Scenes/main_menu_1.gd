extends Node2D
var scene1 :PackedScene =preload("res://Scenes/level_1.tscn")
var scene2 :PackedScene =preload("res://Scenes/level_2.tscn")
var scene3 :PackedScene =preload("res://Scenes/level_3.tscn")
var scene4 :PackedScene =preload("res://Scenes/level_4.tscn")
var scene5 :PackedScene =preload("res://Scenes/level_5.tscn")
var scene6 :PackedScene =preload("res://Scenes/level_6.tscn")
var scene7 :PackedScene =preload("res://Scenes/level_7.tscn")
var scene8 :PackedScene =preload("res://Scenes/level_8.tscn")
var scene9 :PackedScene =preload("res://Scenes/level_9.tscn")
var scene10 :PackedScene =preload("res://Scenes/level_10.tscn")


func _on_button_pressed() -> void:
		var scene_instance = scene1.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_2_pressed() -> void:
		var scene_instance = scene2.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_3_pressed() -> void:
		var scene_instance = scene3.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_4_pressed() -> void:
		var scene_instance = scene4.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_5_pressed() -> void:
		var scene_instance = scene5.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_6_pressed() -> void:
		var scene_instance = scene6.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_7_pressed() -> void:
		var scene_instance = scene7.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_8_pressed() -> void:
		var scene_instance = scene8.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_9_pressed() -> void:
		var scene_instance = scene9.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	

func _on_button_10_pressed() -> void:
		var scene_instance = scene10.instantiate()
		get_tree().root.add_child(scene_instance)
		if get_tree().current_scene:
			get_tree().current_scene.queue_free()
			get_tree().current_scene =scene_instance
	
