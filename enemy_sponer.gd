extends Node2D
@onready var enemy = preload("res://Screens/enemy.tscn") 
func _ready() :
	randomize()


func addEnemy () :
	var newEnemy = enemy.instantiate()
	newEnemy.position.x = randi() % 1700 + 1280 
	newEnemy.position.y = randi() % 530 + 100 
	self.add_child(newEnemy)

func _on_timer_timeout() :
	addEnemy()
	if $Timer.wait_time >= 0.3 :
		$Timer.wait_time *= .98  
	
