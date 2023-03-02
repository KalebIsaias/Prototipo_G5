extends TextureRect

func _ready():
	#Comando para os ingredientes ficarem invisíveis na hotbar
	$Ovo.visible = false
	$Leite.visible = false
	$Trigo.visible = false
	$Chocolate.visible = false

func _process(delta):
	#Condicional para aparecer ou desaparecer o ovo na hotbar
	if Global.pegou_ovo == 1:
		$Ovo.texture = load("res://Assets/Art/Interface/ovo.png")
		$Ovo.visible = true
	elif Global.pegou_ovo == 0:
		$Ovo.visible = false
	#Condicional para aparecer ou desaparecer o leite na hotbar
	if Global.pegou_leite == 1:
		$Leite.texture = load("res://icon.png")
		$Leite.visible = true
	elif Global.pegou_leite == 0:
		$Leite.visible = false
	#Condicional para aparecer ou desaparecer o trigo na hotbar
	if Global.pegou_trigo == 1:
		$Trigo.texture = load("res://Assets/Art/Interface/trigo.png")
		$Trigo.visible = true
	elif Global.pegou_trigo == 0:
		$Trigo.visible = false
	#Condicional para aparecer ou desaparecer o chocolate na hotbar
	if Global.pegou_choco == 1:
		$Chocolate.texture = load("res://Assets/Art/Interface/chocolate.png")
		$Chocolate.visible = true
	elif Global.pegou_choco == 0:
		$Chocolate.visible = false
	if Global.pegou_massa == 1:
		$Massa.texture = load("res://Massa de bolo.png")
		$Massa.visible = true
	elif Global.pegou_massa == 0:
		$Massa.visible = false

