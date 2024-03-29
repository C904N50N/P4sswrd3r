extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_new__password_pressed():
	$"New Password Menu".visible = true
func _on_exit_pressed():
	get_tree().quit()
func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main_Scene.tscn")
