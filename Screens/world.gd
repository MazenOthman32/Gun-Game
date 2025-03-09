extends Node2D

func _physics_process(delta) :
	$UI/Label.text = str(Global.score)
	
func _on_area_2d_body_entered(body) : 
	get_tree().change_scene_to_file("res://Screens/lose_menu.tscn")
