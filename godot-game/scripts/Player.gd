extends CharacterBody3D

@export var speed: float = 6.0
@export var jump_force: float = 5.0
@export var gravity: float = 9.8

func _ready() -> void:
    Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _physics_process(delta: float) -> void:
    var direction = Vector3.ZERO
    if Input.is_action_pressed("ui_up"):
        direction -= transform.basis.z
    if Input.is_action_pressed("ui_down"):
        direction += transform.basis.z
    if Input.is_action_pressed("ui_left"):
        direction -= transform.basis.x
    if Input.is_action_pressed("ui_right"):
        direction += transform.basis.x

    if direction != Vector3.ZERO:
        direction = direction.normalized() * speed

    velocity.x = direction.x
    velocity.z = direction.z

    if not is_on_floor():
        velocity.y -= gravity * delta
    elif Input.is_action_just_pressed("ui_select"):
        velocity.y = jump_force

    move_and_slide()
