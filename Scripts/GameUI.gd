extends Control

@onready var score_texture = %Score/ScoreTexture
@onready var score_label = %Score/ScoreLabel

@onready var health_texture = %Health/HealthTexture
@onready var health_label = %Health/HealthLabel

func _process(_delta):
	# Set the score label text to the score variable in game maanger script
	score_label.text = "x %d" % GameManager.score
	health_label.text = "x %d" % GameManager.health
