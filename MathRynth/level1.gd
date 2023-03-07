extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Transition.change_scene("res://main.tscn")


func _on_open_door_pressed():
	$Door/DoorOpening.play("DoorOpen")
	await $Door/DoorOpening.animation_finished
	Transition.change_scene("res://level1.tscn")
