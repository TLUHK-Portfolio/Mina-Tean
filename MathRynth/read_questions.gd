extends Node

var topic = ""
var level = ""
var questions = ""

func read_questions():
  if not FileAccess.file_exists("res://questions.json"):
    return # Error! We don't have a save to load.

  var file = FileAccess.open("res://questions.json", FileAccess.READ)
  var data = file.get_as_text()

  var json = JSON.new()
  json.parse(data)
    
  var game_data = json.data

  topic = game_data["topic"]
  level = game_data["level"]
  questions = game_data["questions"]

  return

func current():
    return questions[Global.question]
    
