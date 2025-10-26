extends CharacterBody2D
@onready var character: CharacterBody2D = $"."
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D
@onready var game_manager: Node = $"../Game_Manager"



func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("Right"):
		if character.position.x>=615.0:
			game_manager.dead=true 
		else:
			character.position.x=615.0
			character.position.y=570.0
			sprite_2d.flip_v=true
	
	
	elif Input.is_action_just_pressed("Left"):
		if character.position.x<=518.0:
			game_manager.dead=true 
		else:
			character.position.x=518.0
			character.position.y=570.0
			sprite_2d.flip_v=false
