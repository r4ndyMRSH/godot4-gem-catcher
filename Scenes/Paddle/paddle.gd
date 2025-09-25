extends Area2D

const PADDLE_SPEED: float = 500.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_pressed("move_left") == true:
	#	position.x = clampf(position.x - PADDLE_SPEED * delta,52.0,get_viewport_rect().end.x - 52.0)
	#if Input.is_action_pressed("move_right") == true:
	#	position.x = clampf(position.x + PADDLE_SPEED * delta,52.0,get_viewport_rect().end.x - 52.0)
	var movement: float = Input.get_axis("move_left","move_right")
	position.x += PADDLE_SPEED * delta * movement
	position.x = clampf(position.x,
	get_viewport_rect().position.x + 52.0,
	get_viewport_rect().end.x - 52.0)


func _on_area_entered(area: Area2D) -> void:
	print("Collision whit Paddle Detected!")
