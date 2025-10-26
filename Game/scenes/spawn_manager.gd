extends Node2D

@onready var animation_player_left: AnimationPlayer = $"Shuriken-L/AnimationPlayer-left"
@onready var animation_player_right: AnimationPlayer = $"Shuriken-R/AnimationPlayer-right"
@onready var shuriken_r: Area2D = $"Shuriken-R"
@onready var shuriken_l: Area2D = $"Shuriken-L"
@onready var spawn_timer: Timer = $spawn_timer


var spawn_left: bool=false
var spawn_right: bool=false

func _ready() -> void:
	shuriken_l.hide()
	shuriken_r.hide()

func _on_spawn_timer_timeout() -> void:
	if (randi()%2==0):
		spawn_right=true
		spawn_left=false
	else:
		spawn_left=true
		spawn_right=false
	
	_spawn_shuriken()

func _spawn_shuriken() -> void:
	if spawn_right:
		shuriken_r.show()
		animation_player_right.play("Right_shuriken")

	elif spawn_left:
		shuriken_l.show()
		animation_player_left.play("Left_shuriken")
