#Script tela inicial
extends Control

func _ready():
	$"VBoxContainer (start)/Button(start)".grab_focus()
	
#Botão para ir para introdução	
func _on_Buttonstart_pressed():
	get_tree().change_scene("res://Assets/Scenes/Introdução.tscn")

#Botão para ir para ir para telas de controles
func _on_Buttoncontrols_pressed():
	get_tree().change_scene ("res://Assets/Prefab/ControlsScreen.tscn")

#Botão para sair
func _on_Buttonexit_pressed():
	get_tree().quit()
	
