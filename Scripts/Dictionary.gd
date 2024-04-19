extends Node
class_name Dict

var passwords = {}
#points_dict["Blue"] = 150 # Add "Blue" as a key and assign 150 as its value.

func save(passwords):
	var config = FileAccess.open("res://save_test.txt", FileAccess.WRITE)
	config.store_pascal_string(passwords)

func load():
	var config = FileAccess.open("res://save_test.txt", FileAccess.READ)
	if FileAccess.open("res://save_test.txt", FileAccess.READ):
		passwords = config.get_pascal_string()
