extends Node

const NUM_OF_QUESTIONS = 12

var level = 0
var question = 0

var right_answers = 0
var wrong_answers = 0

var level_results = []
var results_by_classroom = {}

# Called when the node enters the scene tree for the first time.
func _ready():
    init_results()

func init_results():
    level_results = []
    level_results.resize(NUM_OF_QUESTIONS)
    results_by_classroom = {}
    
# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
#    pass
