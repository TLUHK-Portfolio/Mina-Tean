extends Node

var topic = ""
var levels
var questions = []
var questions_from_class = 4

func read_questions():
  if not FileAccess.file_exists("res://questions.json"):
    return # Error! We don't have a save to load.

  var file = FileAccess.open("res://questions.json", FileAccess.READ)
  var data = file.get_as_text()

  var json = JSON.new()
  json.parse(data)
    
  var game_data = json.data
  levels = game_data["levels"]

  return

func prepare():
    var classrooms = levels[Global.level]
    print(classrooms)
    for cls in classrooms:  
        classrooms[cls].questions.shuffle()
        for i in questions_from_class:
          var new_question = classrooms[cls].questions[i]
          new_question["classroom"] = cls
          questions.append(new_question)
    questions.shuffle()          

func current():
  return questions[Global.question]
    
func size():
  return questions.size()
