extends Control

var dict_class = Dict.new()
var pass_list = dict_class.load()
var dictionary = pass_list
var website
var password
var pass_length
@onready var length_label = $PanelContainer/VBoxContainer/HBoxContainer5/Label2
var char_list = "1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM!@#$%^&*"

func _ready():
	randomize()

func _process(delta):
	pass_length = $PanelContainer/VBoxContainer/HBoxContainer5/HSlider.value
	length_label.text = str(pass_length)
	website = $PanelContainer/VBoxContainer/HBoxContainer/Website.text
	password = $PanelContainer/VBoxContainer/HBoxContainer2/Password.text

func _on_generate_pressed():
	var new_pass = generate_password(char_list, pass_length)
	$PanelContainer/VBoxContainer/HBoxContainer2/Password.text = new_pass

func generate_password(chars, length):
	var password: String
	var n_char = len(chars)
	for i in range(length):
		password += chars[randi()% n_char]
	return password

func _on_save_pressed():
	export_to_dict()
	dict_class.save(pass_list)
	for key in dictionary:
		var password = dictionary[key]
		print(key, password)

func export_to_dict():
	dictionary[website] = password 

func _on_cancel_pressed():
	$".".visible = false



