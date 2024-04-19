extends HBoxContainer

var password
var website

func _process(delta):
	$Site.text = website
	$Password.text = password

func _on_reveal_toggled(toggled_on):
	if toggled_on:
		$Password.secret = false
	else:
		$Password.secret = true

func _on_copy_pressed():
	DisplayServer.clipboard_set(password)

func _on_edit_toggled(toggled_on):
	if toggled_on:
		$Password.editable = true
	else:
		$Password.editable = false
