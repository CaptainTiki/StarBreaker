class_name MovementNode extends Node

@export var player : Player
@export var stats_node : StatsNode

func _ready():
	set_physics_process(false)

func _process(delta):
	if !player:
		return
		
	player.velocity = Vector3.ZERO
	
	if Input.is_action_pressed("Right"):
		player.velocity.x += 1
	if Input.is_action_pressed("Left"):
		player.velocity.x -= 1
	if Input.is_action_pressed("Up"):
		player.velocity.x -= 1
	if Input.is_action_pressed("Down"):
		player.velocity.x += 1
	
	if player.velocity != Vector3.ZERO:
		player.velocity = player.velocity.normalized() * stats_node.move_speed
	pass
