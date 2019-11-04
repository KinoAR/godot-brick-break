extends KinematicBody2D

export var speed:int = 200
var direction:Vector2 = Vector2(0, 0)
# Called when the node enters the scene tree for the first time.
func _ready():
	direction.y = 1
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta:float)->void:
	process_collision(delta)
	print(position.y)
	pass

func process_collision(delta:float)->void:
	var screen_size = get_viewport_rect().size
	var collide = move_and_collide(direction * speed * delta)
	if collide != null:
		direction = Vector2(0, direction.y * -1)

	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y + 300)
	pass
