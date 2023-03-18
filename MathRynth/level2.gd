extends Node2D

var group: ButtonGroup

var right_answer = Questions.current().answers[0]
# Called when the node enters the scene tree for the first time.
func _ready():
   
    $AnimationPlayer/AnimatedScene/Question.set("text", Questions.current().question)
    
    var answers = Questions.current().answers;
    answers.shuffle()
    
    $AnimationPlayer/AnimatedScene/Answer1.set("text",  answers[0])
    $AnimationPlayer/AnimatedScene/Answer2.set("text",  answers[1])
    $AnimationPlayer/AnimatedScene/Answer3.set("text",  answers[2])
    
    $AnimationPlayer/AnimatedScene/Answer1.pressed.connect(self.answer1_pressed)
    $AnimationPlayer/AnimatedScene/Answer2.pressed.connect(self.answer2_pressed)
    $AnimationPlayer/AnimatedScene/Answer3.pressed.connect(self.answer3_pressed)
    
    $AnimationPlayer.play("move_to_blackboard")
    await $AnimationPlayer.animation_finished
            

func answer1_pressed():
  test_answer($AnimationPlayer/AnimatedScene/Answer1, $AnimationPlayer/AnimatedScene/Answer1_colors)    

func answer2_pressed():
  test_answer($AnimationPlayer/AnimatedScene/Answer2, $AnimationPlayer/AnimatedScene/Answer2_colors)    

func answer3_pressed():
  test_answer($AnimationPlayer/AnimatedScene/Answer3, $AnimationPlayer/AnimatedScene/Answer3_colors)    


func test_answer(button: Button, button_color: ColorRect): 
  var color = button_color.color
  
  if (button.get("text") == right_answer):
    #button.set_theme_stylebox("normal", "StyleBoxFlat").bg_color = Color("#bada55")
    button_color.color = Color(0, 0.5, 0, 1)
    $AnimationPlayer/AnimatedScene/Door.play()
    await $AnimationPlayer/AnimatedScene/Door.animation_finished
    button_color.color = color
    Global.question = Global.question + 1
    if Global.question < Questions.questions.size():
      Transition.change_scene("res://level2.tscn")
    else:
      Transition.change_scene("res://level_finished.tscn")  
  else: 
    button_color.color = Color(0.7, 0, 0, 1)
    $Timer.start()
    await $Timer.timeout
    button_color.color = color
    #button.get_theme_stylebox("normal",  "StyleBoxFlat").bg_color = Color("#000000")
    # button.set("custom_styles/normal").bg_color = Color("#000000")


func _on_button_pressed():
  Transition.change_scene("res://main.tscn")
