#Script da receita
extends TextureRect

func _ready():
	#Comando para deixar invisível inicialemte
	visible = false

func _process(delta):
	#Deixar visível quando terminar diálogo
	if Global.chat == 0:
		visible = true
	else:
		visible = false
	#Mudar de lista de ingredientes para modo de preparo
	if Global.tem_ovo == 1:
		$Ingredientes.visible = true
		$"Modo de preparo".visible = false
	if Global.pegou_choco == 0 and Global.tem_choco == 0:
		$Ingredientes.visible = false
		$"Modo de preparo".visible = true
