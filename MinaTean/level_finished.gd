extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
    if !BackgroundMusicPlayer.stream_paused and BackgroundMusicPlayer.playing:
      $Sound_off.visible = false
    else: 
      $Sound_on.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
#    pass


func _on_to_main_menu_pressed():
    Transition.change_scene("res://main.tscn")


func _on_sound_on_pressed():
    $Sound_on.visible = false
    $Sound_off.visible = true
    BackgroundMusicPlayer.stream_paused = true
 
func _on_sound_off_pressed():
    $Sound_off.visible = false
    $Sound_on.visible = true
    BackgroundMusicPlayer.stream_paused = false

