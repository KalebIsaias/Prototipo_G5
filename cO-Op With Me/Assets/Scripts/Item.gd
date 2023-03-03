extends TextureRect

func _ready():
	$Ovo.visible = false
	$Leite.visible = false
	$Trigo.visible = false
	$Chocolate.visible = false
	$Massa.visible = false
	
func _process(delta):
	if Global.pegou_ovo == 1:
		$Ovo.texture = load("res://Assets/Art/Interface/ovo.png")
		$Ovo.visible = true
	elif Global.pegou_ovo == 0:
		$Ovo.visible = false
	if Global.pegou_leite == 1:
		$Leite.texture = load("res://Assets/Art/Interface/leite_do_lauro.png")
		$Leite.visible = true
	elif Global.pegou_leite == 0:
		$Leite.visible = false
	if Global.pegou_trigo == 1:
		$Trigo.texture = load("res://Assets/Art/Interface/trigo.png")
		$Trigo.visible = true
	elif Global.pegou_trigo == 0:
		$Trigo.visible = false
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
	if Global.apareceu_not == 1:
		$"Notificação".texture = load("res://Assets/Art/Interface/Notificação.png")
		$"Notificação".visible = true
	elif Global.apareceu_not == 0:
		$"Notificação".visible = false

