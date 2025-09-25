extends Node2D

# Emitting signal? when collision detected
func _on_paddle_area_entered(area: Area2D) -> void:
	print("Collision: ", area)
