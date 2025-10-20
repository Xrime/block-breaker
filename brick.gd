extends Area2D

func _ready() -> void:
	connect("area_entered",Callable(self ,"_on_hit"))
	
func _on_hit(area):
	if area.name =="Ball":
		queue_free()
