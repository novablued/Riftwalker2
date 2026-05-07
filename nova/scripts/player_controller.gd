extends CharacterBody3D
class_name NovaVoss

@export var speed: float = 4.0

func _physics_process(delta):
    var input_dir = Input.get_vector("ui_left", "ui_right","ui_up","ui_down")
    var direction = Vector3(input_dir.x,O, input_dir.y)

    if direction:
        velocity = direction * speed
    else:
        velocity = Vector3.ZERO

    move_and_slide()
