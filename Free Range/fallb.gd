extends Node2D
const IDLE_DURATION = 1.0
export var move_to = Vector2(280,400)
export var speed = 30.0
const size = 32
onready var platform = $fall1
onready var tween = $falltween
var drop = false

var duration = move_to.length() / float(speed * size)

func _ready():
	_init_tween()
func _init_tween():
	var area = get_node("fallArea2D").get_overlapping_bodies()
	for body in area:
		if body.name == "Player":
			print("falling")
			drop = true 
	if drop == true:
		
		tween.interpolate_property(self, "position", Vector2(280,125), move_to, duration, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, IDLE_DURATION)
		tween.interpolate_property(self, "position", move_to, Vector2(280,400), duration, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, duration + IDLE_DURATION)
		tween.start()
	else:
		pass

	
		