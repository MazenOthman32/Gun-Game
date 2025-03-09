extends CharacterBody2D
@onready var bullet = preload("res://Screens/bullet.tscn")
func _ready() : 
	pass
func _physics_process(delta) :
	look_at(get_global_mouse_position()) 
	
	if Input.is_action_just_pressed("fire"):
		var newBullet = bullet.instantiate()
		newBullet.position = $gun_tip.get_global_position()
		newBullet.apply_impulse(Vector2(2500,0).rotated(rotation),Vector2.ZERO)
		get_tree().get_root().add_child(newBullet)
		
