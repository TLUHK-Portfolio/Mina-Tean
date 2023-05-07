extends Node2D

func _init():
    Transition.smooth_start()

# Called when the node enters the scene tree for the first time.
func _ready():
    if !BackgroundMusicPlayer.stream_paused and BackgroundMusicPlayer.playing:
      $Music_off.visible = false
    else: 
      $Music_on.visible = true
    
    if Global.play_sounds:
      $Sound_off.visible = false
    else: 
      $Sound_off.visible = true

    
    for i in range(min(Global.game_results.levels_completed + 1, Global.NUM_OF_LEVELS)):
        $Levels.get_child(i).set("visible", true)
        $Levels.get_child(i).get_child(0).set("visible", true)
        
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
    Global.level = 1
    Questions.prepare()
    Transition.change_scene("res://level1.tscn")
    

func _on_music_on_pressed():
    $Music_on.visible = false
    $Music_off.visible = true
    BackgroundMusicPlayer.stream_paused = true

func _on_music_off_pressed():
    $Music_off.visible = false
    $Music_on.visible = true
    BackgroundMusicPlayer.stream_paused = false

func _on_sound_on_pressed():
    $Sound_on.visible = false
    $Sound_off.visible = true
    Global.play_sounds = false
    
func _on_sound_off_pressed():
    $Sound_off.visible = false
    $Sound_on.visible = true
    Global.play_sounds = true
