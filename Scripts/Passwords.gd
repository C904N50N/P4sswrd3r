extends Control

var dictionary = dict.passwords

func _ready():
	pass
	#for key in dictionary:
		#var password = dictionary[key]
		#print(key, password)

func _on_new__password_pressed():
	$"New Password Menu".visible = true
func _on_exit_pressed():
	get_tree().quit()
func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main_Scene.tscn")
