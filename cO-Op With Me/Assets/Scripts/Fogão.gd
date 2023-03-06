# Script para interação com o fogão
extends Area2D

var in_area = 0

func _on_Fogo_body_entered(body):
# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1
	if body.name == "NPC_chef":
		in_area = 2
		print ("Chef ta na área")
