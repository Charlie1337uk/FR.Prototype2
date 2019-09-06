extends KinematicBody2D
const GRAVITY = 10
const FLOOR = Vector2(1, 0)
var velocity = Vector2()

func _physics_process(delta):
	var area = get_node("Area2D").get_overlapping_bodies()
	for body in area:
		if body.name == "Player":
			velocity.x = 0
			velocity.y = 1000
			velocity.y += GRAVITY 
			velocity = move_and_slide(velocity, FLOOR)