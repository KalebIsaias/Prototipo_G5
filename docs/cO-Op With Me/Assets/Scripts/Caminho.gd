#Script do caminho seguido pelo chefe 
extends Path2D


func _physics_process(delta):
	#Comando para o chef seguir o caminho do PathFollow
	if Global.chat == 0 and $PathFollow2D.unit_offset >= 0:
		$PathFollow2D.set_offset($PathFollow2D.get_offset()+50*delta)
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("chef_run")
	#Comando para o chef parar e mudar a animação quando terminar o caminho
	if $PathFollow2D.unit_offset == 1:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("cook_back")
		$PathFollow2D.set_offset($PathFollow2D.get_offset()+0*delta)

