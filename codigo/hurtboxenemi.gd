extends Area2D
signal received_damage(damage: int)  

#@export var health: Health
#@onready var dummy = get_parent().get_node("Dummy")
func _ready():
	connect("area_entered",_on_area_entered)  

func _on_area_entered(hitbox: HitBoxPJ) -> void:  
	print(hitbox) 
	if hitbox != null:
		#health.health -= hitbox.damage
		received_damage.emit(hitbox.damage)  
		get_parent().received_damage(hitbox.damage)
		print("hit detro de codigo hurt box enemi")
		print(hitbox.damage)
