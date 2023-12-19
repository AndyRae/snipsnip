extends Area2D

@onready var axe_load = preload("res://Scenes/Prefabs/projectile.tscn")

var initial_position := Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_position = position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_shoot_timer_timeout():
	var p = axe_load.instantiate()
	var rand_speed = randf_range(10, 12)
	var rand_x = randf_range(-180,180)
	var rand_y = randf_range(1,180)
	get_tree().root.add_child(p)
	p.start(initial_position, rand_x, rand_y, rand_speed)
	$ShootTimer.wait_time = randf_range(1, 2)
	$ShootTimer.start()
	
