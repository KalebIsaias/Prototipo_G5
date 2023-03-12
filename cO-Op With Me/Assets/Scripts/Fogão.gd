# Script para interação com o fogão
extends Area2D

var in_area = 0
var notificacao = 0

func _ready():
	#Comando para deixar a notificação e o temporizador invisível
	$Temporizador.visible = false
	$"Notificação".visible = false

func _on_Fogo_body_entered(body):
# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1
		
func _on_Fogo_body_exited(body):
# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(delta):
	if notificacao == 1:
		#Condições para aparecer o temporizador
		$Temporizador.visible = true
		$Temporizador.play("Tempo_fogao")
	else:
		$Temporizador.visible = false
	#Botão para colocar a massa no forno, o player precisa estar na área, pressionar E e ter a massa
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_massa == 1:
		#Massa some do slot, timer começa e notificação aparece
		Global.hide_slot = 0
		Global.pegou_massa = 0
		Global.tem_massa = 0
		$Timer.start()
		notificacao = 1

		#Botão para colocar tirar o bolo assado do forno, o player precisa estar na área, pressionar E e ter bolo assado e a notificação aparecer
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_bolo_assado == 1 and notificacao == 2: 
		#Bolo aparece na slot e notificação some
		Global.hide_slot = 1
		Global.pegou_bolo_assado = 1
		$"Notificação".visible = false

		
func _on_Timer_timeout():
	#Timer para aparecer a notificação e o temporizador
	notificacao = 2
	$"Notificação".visible = true
	$Temporizador.visible = false


	
