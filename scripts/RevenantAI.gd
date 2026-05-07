extends CharacterBody3D

@export var move_speed := 4.0

var target = null

func _ready():
add_to_group("revenant")

func _physics_process(delta):

if target == null:
d_target()


var direction = (target.global_position - global_position).normalized()

velocity.x = direction.x * move_speed
velocity.z = direction.z * move_speed

move_and_slide()

func find_target():

var enemies = get_tree().get_nodes_in_group("enemy")

if enemies.size() > 0:
emies[0]
