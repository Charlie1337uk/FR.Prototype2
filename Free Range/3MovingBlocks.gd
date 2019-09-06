#

extends Node2D


const IDLE_DURATION = 1.0

export var move_to = Vector2(760,100)

export var speed = 9.0


const size = 32

onready var platform = $Platform
onready var tween = $MoveTween


func _ready():
	_init_tween()

func _init_tween():
	
	var duration = move_to.length() / float(speed * size)
	tween.interpolate_property(self, "position", Vector2(760,320), move_to, duration, Tween.TRANS_BOUNCE, Tween.EASE_IN_OUT, IDLE_DURATION)
	tween.interpolate_property(self, "position", move_to, Vector2(760,320), duration, Tween.TRANS_BOUNCE, Tween.EASE_IN_OUT, duration + IDLE_DURATION)
	tween.start()
	pass
