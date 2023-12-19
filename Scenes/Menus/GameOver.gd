extends CanvasLayer

signal reset
signal goto_main

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_reset_button_pressed():
	print("resetting")
	reset.emit()


func _on_main_menu_button_pressed():
	print("going to main")
	reset.emit()
