extends TextureRect

var contador = 0

func _ready():
	visible = false
	$Context.visible = false
	$Context2.visible = false
	$Mecanica.visible = false
	$Fim_context.visible = false
	$Pedido.visible = false
	$Pedido2.visible = false
	$Resposta_Atendente.visible = false
	$Laura_Cliente.visible = false
	$Kaled_Atendente.visible = false
	$Robo.visible = false
	

func _process(delta):
	if Input.is_action_just_pressed("action"):
		contador += 1
		Global.chat = 1
	if contador == 0:
		texture = load ("res://Assets/Art/Interface/CHAT2.png")
		visible = true
		$Context.visible = true
		flip_h = true
		flip_v = true
		$Robo.texture = load ("res://Assets/Art/Interface/robo.png")
		$Robo.visible = true
	if contador == 1:
		$Context.visible = false
		$Context2.visible = true
	if contador == 2:
		$Context2.visible = false
		$Mecanica.visible = true
	if contador == 3:
		$Mecanica.visible = false
		$Fim_context.visible = true
	if contador == 4:
		$Robo.visible = false
		flip_h = false
		flip_v = false
		texture = load ("res://Assets/Art/Interface/CHAT.png")
		$Fim_context.visible = false
		$Pedido.visible = true
		$Laura_Cliente.texture = load ("res://Assets/Art/Interface/Laura.png")
		$Laura_Cliente.visible = true
	if contador == 5:
		$Pedido.visible = false
		$Pedido2.visible = true
		$Laura_Cliente.texture = load ("res://Assets/Art/Interface/Laura.png")
		$Laura_Cliente.visible = true	
	if contador == 6:
		$Pedido2.visible = false
		$Resposta_Atendente.visible = true
		$Kaled_Atendente.texture = load ("res://Assets/Art/Interface/Atendente.png")
		$Laura_Cliente.visible = false
		$Kaled_Atendente.visible = true	
	if contador >= 7:
		$Resposta_Atendente.visible = false
		$Kaled_Atendente.visible = false
		visible = false
		Global.chat = 0
		
		
	
