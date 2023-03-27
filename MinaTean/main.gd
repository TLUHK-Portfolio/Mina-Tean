extends Node2D

func _init():
    Transition.smooth_start()

# Called when the node enters the scene tree for the first time.
func _ready():
    if !BackgroundMusicPlayer.stream_paused and BackgroundMusicPlayer.playing:
      $Sound_off.visible = false
    else: 
      $Sound_on.visible = true
    
    Questions.read_questions()
    # get_node("Label").set("text", Questions.topic)


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
#    pass


func _on_exit_pressed():
    Transition.smooth_quit()


func _on_level1_pressed():
    # get_tree().change_scene_to_file("res://level1.tscn")
    Global.level = 0
    Questions.prepare()
    Transition.change_scene("res://level1.tscn")


func _on_level_2_pressed():
    #Global.level = 1
    #Transition.change_scene("res://level1.tscn")
    pass
    



func _on_sound_on_pressed():
    $Sound_on.visible = false
    $Sound_off.visible = true
    BackgroundMusicPlayer.stream_paused = true


func _on_sound_off_pressed():
    $Sound_off.visible = false
    $Sound_on.visible = true
    BackgroundMusicPlayer.stream_paused = false
