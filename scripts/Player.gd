extends CharacterBody3D

var speed = 5.0
var attack_damage = 25
var attack_range = 2.0

func _physics_process(delta):
    var input_dir = Vector3.ZERO

    if Input.is_action_pressed("ui_right"):
        input_dir.x += 1

    if Input.is_action_pressed("ui_left"):
        input_dir.x -= 1

    if Input.is_action_pressed("ui_down"):
        input_dir.z += 1

    if Input.is_action_pressed("ui_up"):
        input_dir.z -= 1

    velocity = input_dir.normalized() * speed
    move_and_slide()

func attack(enemy):
    if global_position.distance_to(enemy.global_position) <= attack_range:
        enemy.take_damage(attack_damage)
