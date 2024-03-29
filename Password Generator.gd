extends Control

var pass_length
@onready var length_label = $PanelContainer/VBoxContainer/HBoxContainer5/Label2
var char_list = "1234567890qwertyuiopasdfghjklzxcvbnm!@#$%^&*"

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	

func _process(delta):
	pass_length = $PanelContainer/VBoxContainer/HBoxContainer5/HSlider.value
	length_label.text = str(pass_length)

func _on_generate_pressed():
	var new_pass = generate_password(char_list, pass_length)
	
	$PanelContainer/VBoxContainer/HBoxContainer2/Password.text = new_pass

func generate_password(chars, length):
	var password: String
	var n_char = len(chars)
	for i in range(length):
		password += chars[randi()% n_char]
	return password

func _on_cancel_pressed():
	$".".visible = false
