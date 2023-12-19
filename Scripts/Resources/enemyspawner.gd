extends Area2D

@onready var axe_load = preload("res://Scenes/Prefabs/projectile.tscn")

var initial_position := Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_position = position
	start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start():
	print("start enemy")

func _on_shoot_timer_timeout():
	print("timer running?")
	print(initial_position)
	var p = axe_load.instantiate()
	get_tree().root.add_child(p)
	p.start(initial_position)
	print(p)
	$ShootTimer.wait_time = randf_range(4, 20)
	$ShootTimer.start()
	
