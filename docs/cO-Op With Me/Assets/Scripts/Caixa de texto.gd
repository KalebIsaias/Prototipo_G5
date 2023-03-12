#Script dos diálogos
extends Control

#Variávei para mudar as falas dos diálogos
var contador = 0
var contador2 = 0

func _ready():
	#Comando para deixar todo o diálogo invisível iniciamente
	$Chat/Context2.visible = false
	$Chat/Mecanica.visible = false
	$Chat/Fim_context.visible = false
	$Chat/Pedido.visible = false
	$Chat/Pedido2.visible = false
	$Chat/Resposta_Atendente.visible = false
	$Chat/Laura_Cliente.visible = false
	$Chat/Kaled_Atendente.visible = false
	$Chat/Fala_player.visible = false
	$Chat/otto.visible = false
	$Chat/otto_cozinheiro.visible = false
	$Chat/Player_cozinheiro.visible = false
	$Chat/Chat2.visible = false	
	$"Chat/Finalização".visible = false
	$"Chat/Finalização2".visible = false

func _process(delta):
	#Botão para mudar o contador
	if Input.is_action_just_pressed("action"):
		contador += 1
		Global.chat = 1
	#Botão para mudar o contador depois de ter colocado o bolo na bancada
	if Input.is_action_just_pressed("action") and Global.pegou_bolo_assado == 0 and Global.tem_bolo_assado == 0:
		contador2 += 1
	if contador == 0:
	#Chat inicial aparece
		$Chat.texture = load ("res://Assets/Art/Interface/CHAT2.png")
		visible = true
		$Chat/Context.visible = true
		$Chat.flip_h = true
		$Chat.flip_v = true
		$Chat/Robo.texture = load ("res://Assets/Art/Interface/robo.png")
		$Chat/Robo.visible = true
	if contador == 1:
	#Primeira fala fica invisível e a segunda aparece
		$Chat/Context.visible = false
		$Chat/Context2.visible = true
	if contador == 2:
	#Segunda fala fica invisível e a terceira aparece
		$Chat/Context2.visible = false
		$Chat/Mecanica.visible = true
	if contador == 3:
		#Terceira fala fica invisível e a quarta aparece
		$Chat/Mecanica.visible = false
		$Chat/Fim_context.visible = true
	if contador == 4:
		#Conversa do pedido começa, mensagem do robô fica invisível e aparece a fala da Laura e sua respectiva imagem
		$Chat.flip_v = false
		$Chat/Robo.visible = false
		$Chat/Chat2.texture = load ("res://Assets/Art/Interface/CHAT.png")
		$Chat/Fim_context.visible = false
		$Chat/Pedido.visible = true
		$Chat/Laura_Cliente.texture = load ("res://Assets/Art/Interface/Laura.png")
		$Chat/Laura_Cliente.visible = true
		$ColorRect.visible = true
	if contador == 5:
		#Segunda fala da Laura aparece
		$Chat/Pedido.visible = false
		$Chat/Pedido2.visible = true
		$Chat/Laura_Cliente.texture = load ("res://Assets/Art/Interface/Laura.png")
		$Chat/Laura_Cliente.visible = true	
	if contador == 6:
		#Fala do atendente e o seu desenho aparece
		$Chat/Chat2.visible = true
		$Chat/Resposta_Atendente.visible = true
		$Chat/Kaled_Atendente.texture = load ("res://Assets/Art/Interface/Atendente.png")
		$Chat/Kaled_Atendente.visible = true	
	if contador >= 7:
		#Comando para deixar tudo invisível
		$Chat/Resposta_Atendente.visible = false
		$Chat/Kaled_Atendente.visible = false
		visible = false
		$Chat/Pedido2.visible = false
		$Chat/Laura_Cliente.visible = false
		Global.chat = 0
	if Global.tem_bolo_assado == 0 and Global.pegou_bolo_assado == 0:
		#Segundo dialogo começando depois de colocar o bolo assado na bancada
		$Chat/Player_cozinheiro.visible = true
		$Chat/Player_cozinheiro.texture = load("res://Assets/Art/Interface/Player_COZINHEIRO.png")
		$Chat/Fala_player.visible = true
		$Chat/Chat2.visible = false
		visible = true
		Global.chat = 1
		$ColorRect.visible = true
	if contador2 == 2:
		#Fala do Otto fica visível
		$Chat/otto_cozinheiro.visible =true
		$Chat/otto_cozinheiro.texture = load ("res://Assets/Art/Interface/otto_cozinheiro.png")
		$Chat/otto.visible = true
		$Chat/Chat2.visible = true
	if contador2 == 3:
		#Finalização do robô começa após o diálogo anterior, que fica invisível
		$Chat.flip_h = true
		$Chat.flip_v = true
		$Chat/Player_cozinheiro.visible = false
		$Chat/Fala_player.visible = false
		$Chat/otto.visible = false
		$Chat/otto_cozinheiro.visible = false
		$Chat/Chat2.visible = false
		$Chat/Robo.visible = true
		$"Chat/Finalização".visible = true
	if contador2 == 4:
		#Segunda fala do robô
		$"Chat/Finalização2".visible = true
		$"Chat/Finalização".visible = false
		$Chat/Fala_player.visible = false
		$Chat/Player_cozinheiro.visible = false
	if contador2 >= 5:
		#Deixa tudo invisível
		visible = false
	
