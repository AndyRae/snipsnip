extends Area2D

# Signal to emit
signal exploded

# Reference AnimatedSprite2D
@onready var animated_sprite = $AnimatedSprite2D

func _ready():
	pass
	

func _on_body_entered(body):

	# Player Check
	if body.is_in_group("Player"):
		# Play animation
		animated_sprite.play("explode")
		# Set the game score to 0
		GameManager.score = 0
		# Emit a signal to indicate an explosion. Not sure what to do with this.
		emit_signal("exploded")



func _on_animated_sprite_2d_animation_finished():
	# Queue the mine for deletion
	# Seperate function so deletion waits for animation.
	queue_free()
