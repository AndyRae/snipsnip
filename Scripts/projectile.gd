extends CharacterBody2D

@export var speed = 300.0
@export var x = 0
@export var y = 0

var angle = 0

func _ready():
	var flip = Vector2(-1,1)
	$Sprite2D.scale = flip
	$CollisionPolygon2D.scale = flip
	

func start(pos, new_x, new_y, new_speed):
	position = pos
	x = new_x
	y = new_y
	speed = new_speed
	

func _process(delta):
	position.y += speed * delta

func _physics_process(delta):
	velocity = Vector2(x, y) * speed
	
	rotate(angle - speed * delta)
	
	# detect colissions
	var collision = move_and_collide(velocity * delta)
	#if collision:
		## but disappear when hitting player
		#var collider = collision.get_collider()
		#if collider.is_in_group("Player"):
			#queue_free()

		
func _on_VisibilityNotifier2D_screen_exited():
	# Deletes the axe when it exits the screen.
	queue_free()


func _on_area_2d_body_entered(body):
	queue_free()
	pass # Replace with function body.
