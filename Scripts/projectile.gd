extends CharacterBody2D

@export var speed = 300.0
var angle = 0

func _ready():
	var flip = Vector2(-1,1)
	$Sprite2D.scale = flip
	$CollisionPolygon2D.scale = flip


func _physics_process(delta):
	velocity = Vector2(-50, 20) * speed
	
	rotate(angle - speed * delta)
	
	

	move_and_collide(velocity * delta)
