# Script do item leite
extends TextureRect

func _process(delta):
# Condional para aparecer ou desaparecer na hotbar do jagador.
	if Global.hide_slot == 1:
		$Texture.visible = true
	else:
		$Texture.visible = false
