extends Control


const SAVE_JSON = "res://sav.json"
var website
var password

func _ready():
	#import_from_dict()
	print(website, ":", password)

func import_from_dict(dict: Dictionary) -> void:
	website = dict.website
	password = dict.password

func save_json() -> void:
	var output := []
	for child in get_children():
		output.push_back(child.export_to_dict())

	var json := JSON.print(output, "  ")
	var file := File.new()
	
	file.open(SAVE_JSON, File.WRITE)

	file.store_string(json)

	file.close()

func load_json() -> void:
	var file := File.new()
	var error := file.open(SAVE_JSON, File.READ)
	
	if not error == OK:
		print_error("Could not load file at %s" % SAVE_JSON)
		return

	var input := file.get_as_text()

	file.close()

	var json: Array = JSON.parse(input).result

	for i in get_child_count():
		get_child(i).import_from_dict(json[i])

func _on_new__password_pressed():
	$"New Password Menu".visible = true
func _on_exit_pressed():
	get_tree().quit()
func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main_Scene.tscn")
