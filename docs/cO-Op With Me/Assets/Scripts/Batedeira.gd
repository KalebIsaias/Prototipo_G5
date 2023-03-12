# Script para interação com a Batedeira
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0
var notificacao = 0

func _ready():
	#Comando para deixar a notificação e o temporizador invisível
	$Temporizador.visible = false
	$"Notificação".visible = false


func _on_Batedeira_body_entered(body):
	# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1

func _on_Batedeira_body_exited(body):
	# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	#Condições para aparecer o temporizador
	if notificacao == 1:
		$Temporizador.visible = true
		$Temporizador.play("Tempo-batedeira")
	else:
		$Temporizador.visible = false
		
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o ovo.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_ovo == 1:
		#Ovo fica invisível na slot
		Global.hide_slot = 0
		Global.pegou_ovo = 0
		Global.tem_ovo = 0
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o leite.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_leite == 1:
		#Leite fica invisível na slot
		Global.hide_slot = 0
		Global.pegou_leite = 0
		Global.tem_leite = 0
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o trigo.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_trigo == 1:
		#Farinha fica invisível na slot
		Global.hide_slot = 0
		Global.pegou_trigo = 0
		Global.tem_trigo = 0
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o chocolate.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_choco == 1:
		#Chocolate fica invisível na slot, o timer começa e o temporizador aparece
		Global.hide_slot = 0
		Global.pegou_choco = 0
		Global.tem_choco = 0
		$Timer.start()
		notificacao = 1
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area, pegou o tabuleiro, o timer acabou e tem massa na batedeira
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_tabuleiro == 0  and notificacao == 0 and Global.pegou_tabuleiro == 1 and Global.tem_massa == 1:
		#Tabuleiro com a massa fica visível na slot e a notificação fica invisível
		Global.hide_slot = 1
		Global.pegou_massa = 1
		Global.pegou_tabuleiro = 0
		$"Notificação".visible = false
		notificacao = 0
	

func _on_Timer_timeout():
	#Timer para aparecer a notificação e o temporizador
	notificacao = 0
	$"Notificação".visible = true





