extends Node

var topic = ""
var levels
var questions = ""

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

func current():
  return levels[Global.level].questions[Global.question]
    
func size():
  return levels[Global.level].questions.size()
