# Script para interação com a bancada
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0

func _ready():
	#Comando para deixar o tabuleiro em cima da bancada visível
	$TabuleiroVazio. visible = true
	#Comando para deixar o bolo assado e o bolo pronto em cima da bancada invisível
	$Bolo.visible = false
	$BoloPronto.visible = false

func _on_Bancada_body_entered(body):
# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1

func _on_Bancada_body_exited(body):
# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(delta):
	#Botão de interação para pegar o tabuleiro em cima da bancada, só funciona quando o jogador aperta E, o player está na área, não tem chocolate na geladeira, tem tabuleiro na bancada e não tem nada na slot
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_choco == 0 and Global.tem_tabuleiro == 1 and Global.hide_slot == 0:
		#Tabuleiro fica visível na slot e invisível na bancada
		Global.hide_slot = 1
		Global.pegou_tabuleiro = 1
		Global.tem_tabuleiro = 0
		$TabuleiroVazio.visible = false
	#Botão de interação para colocar o bolo assado em cima da bancada, só funciona quando o jogador aperta E, o player está na área e o player pegou o bolo no forno
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_bolo_assado == 1:
		#Bolo assado fica invisível na slot e visível na bancada
		Global.hide_slot = 0
		Global.pegou_bolo_assado = 0
		Global.tem_bolo_assado = 0
		$Bolo.visible = true



