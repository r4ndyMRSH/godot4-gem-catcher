extends Area2D

const SPEED: float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Removing GEM after collison
func die() -> void:
	set_process(false)
		# Queues this node to be deleted at the end of the current frame. 
		# When deleted, all of its children are deleted as well, 
		# and all references to the node and its children become invalid
	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += SPEED * delta
	if position.y > get_viewport_rect().end.y:
		print("Gems falls off")
		die()


func _on_area_entered(area: Area2D) -> void:
	print("Gems hits paddle")
	die()
