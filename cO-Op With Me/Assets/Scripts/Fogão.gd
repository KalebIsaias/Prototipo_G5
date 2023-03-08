# Script para interação com o fogão
extends Area2D

var in_area = 0

func _on_Fogo_body_entered(body):
# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1
		
func _on_Fogo_body_exited(body):
# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(delta):
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_massa == 1:
		Global.hide_slot = 0
		Global.pegou_massa = 0
		Global.tem_massa = 0
		$Timer.start()

	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_bolo_assado == 1 and Global.tem_massa == 0:
		Global.hide_slot = 1
		Global.pegou_bolo_assado = 1
		#Global.apareceu_not_bolo = 0

#func _on_Timer_timeout():
#	Global.apareceu_not_bolo = 1

# and Global.apareceu_not_bolo == 1 
	
