extends "res://ssm1.gd"

func _state_logic(delta):
	add_state("idle")
	add_state("moving")
	add_state("dmg")
	call_deferred{"set_state", states.sleep}
func _get_transition(delta):
	return null
	
func _enter_state(new_state, old_state):
	pass
	
func _exit_state(old_state, new_state):
	pass
	