extends Node2D

var gold_cup = load("res://img/cups/gold.png")
var silver_cup = load("res://img/cups/silver.png")
var bronze_cup = load("res://img/cups/bronze.png")

# Called when the node enters the scene tree for the first time.
func _ready():
    if !BackgroundMusicPlayer.stream_paused and BackgroundMusicPlayer.playing:
      $Sound_off.visible = false
    else: 
      $Sound_on.visible = true

    show_cups("math", $Cups/Math_cups)
    show_cups("nature", $Cups/Nature_cups)
    show_cups("language", $Cups/Language_cups)
    

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

func show_cups(classroom, cups):
    
    for i in Questions.questions_from_class:
        match Global.results_by_classroom[classroom][i]:
            1:
              cups.get_child(i).set("texture", bronze_cup)
            2:
              cups.get_child(i).set("texture", silver_cup)
            3:
              cups.get_child(i).set("texture", gold_cup)
    
