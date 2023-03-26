extends Node2D

func _init():
    Transition.smooth_start()

# Called when the node enters the scene tree for the first time.
func _ready():
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
