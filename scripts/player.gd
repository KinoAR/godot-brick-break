extends KinematicBody2D

export var speed:int = 400

# Called when the node enters the scene tree for the first time.
func _ready()->void:
	var screen_size = get_viewport_rect().size
	# Set starting position of the player to be center of the screen
	pass # Replace with function body.


func _process(delta)->void:
	process_movement()
	pass

func process_movement()->void:
	var screen_size = get_viewport_rect().size
	var movement:Vector2 = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		movement.x = 1
	if Input.is_action_pressed("ui_left"):
		movement.x = -1

	move_and_slide(movement * speed)
	position.x  = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	pass