extends Node2D

var right_answer = ""

var gold_cup = load("res://img/cups/gold.png")
var silver_cup = load("res://img/cups/silver.png")
var bronze_cup = load("res://img/cups/bronze.png")

var attempts = 3

# Called when the node enters the scene tree for the first time.

func _ready():
  
  if !BackgroundMusicPlayer.stream_paused and BackgroundMusicPlayer.playing:
      $Sound_off.visible = false
  else: 
      $Sound_on.visible = true
         
  fill_answer_fields()
  show_cups()
  
  $AnimationPlayer/AnimatedScene/Answer1.pressed.connect(self.answer1_pressed)
  $AnimationPlayer/AnimatedScene/Answer2.pressed.connect(self.answer2_pressed)
  $AnimationPlayer/AnimatedScene/Answer3.pressed.connect(self.answer3_pressed)
  disable_buttons() 
  

  $AnimationPlayer.play("move_to_blackboard")
  await $AnimationPlayer.animation_finished
  
  enable_buttons()          

func answer1_pressed():
    test_answer($AnimationPlayer/AnimatedScene/Answer1/Answer1_label, $AnimationPlayer/AnimatedScene/Answer1_colors)    

func answer2_pressed():
    test_answer($AnimationPlayer/AnimatedScene/Answer2/Answer2_label, $AnimationPlayer/AnimatedScene/Answer2_colors)    

func answer3_pressed():
    test_answer($AnimationPlayer/AnimatedScene/Answer3/Answer3_label, $AnimationPlayer/AnimatedScene/Answer3_colors)    


func test_answer(label: Label, button_color: ColorRect): 
    #var color = button_color.color
  
    if (label.get("text") == right_answer):
        button_color.color = Color(0, 0.5, 0, 1)
        disable_buttons()
        
        Global.level_results[Global.question] = attempts
        Global.results_by_classroom[Questions.current().classroom].append(attempts)
        show_cups()
        
        $AnimationPlayer/AnimatedScene/Door_closed.visible = false
        $AnimationPlayer/AnimatedScene/Door.visible = true
        $AnimationPlayer/AnimatedScene/Door.play()
        await $AnimationPlayer/AnimatedScene/Door.animation_finished 
        #button_color.color = color
        Global.question = Global.question + 1
        if Global.question < Questions.size():
            Transition.change_scene("res://level1.tscn")
        else:
            Global.question = 0
            Transition.change_scene("res://level_finished.tscn")  
    else:
        attempts = attempts - 1
        button_color.color = Color(0.7, 0, 0, 1)
        play_ghost_animation()
        #button_color.color = color
        #button.get_theme_stylebox("normal",  "StyleBoxFlat").bg_color = Color("#000000")
        # button.set("custom_styles/normal").bg_color = Color("#000000")

func fill_answer_fields():
    $AnimationPlayer/AnimatedScene/Question.set("text", Questions.current().question)
    var answers = Questions.current().answers;
    right_answer = answers[0]
    answers.shuffle()
    
    $AnimationPlayer/AnimatedScene/Answer1/Answer1_label.set("text",  answers[0])
    $AnimationPlayer/AnimatedScene/Answer2/Answer2_label.set("text",  answers[1])
    $AnimationPlayer/AnimatedScene/Answer3/Answer3_label.set("text",  answers[2])
    
    var texture = load("res://img/classroom/level1/" + Questions.current().classroom + ".png")
    $AnimationPlayer/AnimatedScene/Background.texture = texture
      

func _on_button_pressed():
    Global.question = 0
    Transition.change_scene("res://main.tscn")


func _on_sound_on_pressed():
    $Sound_on.visible = false
    $Sound_off.visible = true
    BackgroundMusicPlayer.stream_paused = true

func _on_sound_off_pressed():
    $Sound_off.visible = false
    $Sound_on.visible = true
    BackgroundMusicPlayer.stream_paused = false

func play_ghost_animation():
    disable_buttons()
    $AnimationPlayer/AnimatedScene/Door_closed.visible = false
    $AnimationPlayer/AnimatedScene/Ghost.visible = true
    $AnimationPlayer/AnimatedScene/Ghost.play()
    await $AnimationPlayer/AnimatedScene/Ghost.animation_finished
    $AnimationPlayer/AnimatedScene/Door_closed.visible = true
    $AnimationPlayer/AnimatedScene/Ghost.visible = false
    enable_buttons()
      

func disable_buttons():
    $AnimationPlayer/AnimatedScene/Answer1.disabled = true
    $AnimationPlayer/AnimatedScene/Answer2.disabled = true
    $AnimationPlayer/AnimatedScene/Answer3.disabled = true
    
func enable_buttons():
    $AnimationPlayer/AnimatedScene/Answer1.disabled = false
    $AnimationPlayer/AnimatedScene/Answer2.disabled = false
    $AnimationPlayer/AnimatedScene/Answer3.disabled = false
    
func show_cups():
    var cups = $AnimationPlayer/AnimatedScene/Cups
    
    for i in Global.NUM_OF_QUESTIONS:
        match Global.level_results[i]:
            1:
                cups.get_child(i).set("texture", bronze_cup)
            2:
                cups.get_child(i).set("texture", silver_cup)
            3:
                cups.get_child(i).set("texture", gold_cup)
                       
