# Script para interação com a Batedeira
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0

func _on_Batedeira_body_entered(body):
	# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1

func _on_Batedeira_body_exited(body):
	# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o ovo.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_ovo == 1:
		Global.hide_slot = 0
		Global.pegou_ovo = 0
		Global.tem_ovo = 0
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o chocolate.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_leite == 1:
		Global.hide_slot = 0
		Global.pegou_leite = 0
		Global.tem_leite = 0
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_trigo == 1:
		Global.hide_slot = 0
		Global.pegou_trigo = 0
		Global.tem_trigo = 0
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_choco == 1:
		Global.hide_slot = 0
		Global.pegou_choco = 0
		Global.tem_choco = 0
		$Timer.start()



func _on_Timer_timeout():
	Global.apareceu_not = 1
	if Input.is_action_just_pressed("action") and Global.tem_massa == 1:
		Global.hide_slot = 1
		Global.pegou_massa = 1
