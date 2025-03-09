extends CharacterBody2D
var speed = 75
var health = 100 
func _physics_process(delta) :
	position.x -= speed * delta
	if health <= 0 :
		queue_free()
		Global.score += 1


func _on_area_2d_body_entered(body):
	if body.is_in_group('Bullets') :
		body.queue_free()
		health -= 25
