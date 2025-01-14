class_name HealthNode extends Node

@export var max_health: int = 100
var current_health: int

signal took_damage(amount: int)
signal died()

func _ready():
	set_process(false)
	set_physics_process(false)
	current_health = max_health
	pass 

func take_damage(amount: int) -> void:
	current_health -= amount
	emit_signal("took_damage", amount)
	
	if current_health <= 0:
		_on_death()
	pass

func heal(amount: int) -> void:
	current_health = min(current_health + amount, max_health) #make sure we don't go over health
	pass

func _on_death():
	emit_signal("died")
