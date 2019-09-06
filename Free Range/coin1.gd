extends Area2D



func _on_coin1_body_entered(body):
	if body.is_in_group("char"):
		queue_free()
	else:
		pass