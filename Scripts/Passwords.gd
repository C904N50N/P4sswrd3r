extends Control

var dict_class = Dict.new()
var pass_file = dict_class.load()
@onready var template = preload("res://Scenes/Password_Template.tscn")
var dictionary = pass_file

func _ready():
	load_passwords()

func load_passwords():
	for key in dictionary:
		var password = dictionary[key]
		var template_instance = template.instantiate()
		$VBoxContainer/PanelContainer/ScrollContainer/VBoxContainer.add_child(template_instance)
		template_instance.website = key
		template_instance.password = password

func _on_new__password_pressed():
	$"New Password Menu".visible = true
func _on_exit_pressed():
	get_tree().quit()
func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main_Scene.tscn")
func _on_refresh_pressed():
	#load_passwords(): not working
	get_tree().change_scene_to_file("res://Scenes/Passwords.tscn")
