class_name Player extends CharacterBody3D

@export var health_node : HealthNode

# Called when the node enters the scene tree for the first time.
func _ready():
	if health_node:
		health_node.connect("took_damage", _on_take_damage)
		health_node.connect("died", _on_death)
	pass # Replace with function body.

func _on_take_damage(amount: int) -> void:
	#screenshake? 
	#rock the ship?
	pass

func _on_death(amount: int) -> void:
	#cause explosion? 
	#pause game - end game screen?
	pass

func _physics_process(delta):
	print(velocity)
	move_and_slide()
