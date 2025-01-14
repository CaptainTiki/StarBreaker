extends Camera3D

@onready var player = $"../Player"

# Called when the node enters the scene tree for the first time.
func _ready():
	global_transform.origin = player.global_transform.origin + Vector3(0,10,10)
	look_at(player.global_transform.origin, Vector3.UP)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#global_transform.origin = player.global_transform.origin + Vector3(0,10,10)
	look_at(player.global_transform.origin, Vector3.UP)
	pass
