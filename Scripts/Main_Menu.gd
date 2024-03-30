extends Control

@onready var password = $"Menu/Password/Insert Password"
var pass_text
var master_password = "hi" #add in varible that connects to the list of passwords

func _process(delta):
	pass_text = password.text

func _on_enter_pressed():
	if pass_text == master_password:
		get_tree().change_scene_to_file("res://Scenes/Main_Scene.tscn")
