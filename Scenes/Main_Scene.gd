extends Control

func _on_passwords_pressed():
	get_tree().change_scene_to_file("res://Scenes/Passwords.tscn")

func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main_Scene.tscn")

func _on_logout_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main_Menu.tscn")

func _on_exit_pressed():
	get_tree().quit()
