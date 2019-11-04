extends StaticBody2D

signal hit

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta)->void:

	pass

func process_hit()->void:
	$CollisionShape2D.set_deferred("disabled", true)
	visible = false
	# Emit Signal so we can increment score in the main scene when a brick is hit
	emit_signal("hit")
	pass

