extends Node
@onready var death_menu: Panel = %"Death-menu"
@onready var character: CharacterBody2D = $"../Character"
var dead:bool=false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dead==true:
		get_tree().paused=true
		death_menu.show()
		character.queue_free()


func _on_shuriken_l_body_entered(body: Node2D) -> void:
	if body.name=="Character":
		get_tree().paused=true
		death_menu.show()
		body.queue_free()


func _on_button_pressed() -> void:
	get_tree().paused=false
	death_menu.hide()
	get_tree().reload_current_scene()
