extends Node2D

var group: ButtonGroup

var right_answer = Questions.current().answers[0]
# Called when the node enters the scene tree for the first time.
func _ready():
    $Question.set("text", Questions.current().question)
    
    var answers = Questions.current().answers;
    answers.shuffle()
    
    $Answers/Answer1.set("text",  answers[0])
    $Answers/Answer2.set("text",  answers[1])
    $Answers/Answer3.set("text",  answers[2])
    
    $Answers/Answer1.pressed.connect(self.answer1_pressed)
    $Answers/Answer2.pressed.connect(self.answer2_pressed)
    $Answers/Answer3.pressed.connect(self.answer3_pressed)
        

func answer1_pressed():
  test_answer($Answers/Answer1)    

func answer2_pressed():
  test_answer($Answers/Answer2)    

func answer3_pressed():
  test_answer($Answers/Answer3)    


func test_answer(button: Button):
  if (button.get("text") == right_answer):
    button.get_theme_stylebox("normal").bg_color = Color("#bada55")
    #button.set("theme_override_styles/pressed/StyleBoxFlat/bg_color", Color("#bada55"))  
  else: 
    button.get_theme_stylebox("normal").bg_color = Color("#000000")
    # button.set("custom_styles/normal").bg_color = Color("#000000")


func _on_button_pressed():
  Transition.change_scene("res://main.tscn")


func _on_open_door_pressed():
  $Door.play()
  await $Door.animation_finished
  Global.question = Global.question + 1
  if Global.question < Questions.questions.size():
   Transition.change_scene("res://level1.tscn")
  else:
   Transition.change_scene("res://level_finished.tscn") 


    #var pressed = $Answers.group.get_pressed_button().name
    #var answer = get_node("Answers/"+pressed).get("text")
 
    #if answer == right_answer:        
  

# for i in group
#    i.connect("pressed", self, "funktsioon")
# group.get_buttons()
# group.get_pressed_button()


func _on_door_animation_finished():
  $Door.stop()
  Global.question = Global.question + 1
  if Global.question < Questions.questions.size():
   Transition.change_scene("res://level1.tscn")
  else:
   Transition.change_scene("res://level_finished.tscn") 
