extends Control

func _ready():
	$"VBoxContainer (start)/Button(start)".grab_focus()
	
	
func _on_Buttonstart_pressed():
	pass # Replace with function body.

func _on_Buttoncontrols_pressed():
	get_tree().change_scene ("res://ControlsScreen.tscn")

func _on_Buttonexit_pressed():
	get_tree().quit()
	
