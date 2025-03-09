extends Control

func _ready() :
	$scoreBoard.text = str(Global.score)
	Global.score = 0
func _on_play_pressed() :
	get_tree().change_scene_to_file("res://Screens/world.tscn")

func _on_exit_pressed() :
	get_tree().quit()
