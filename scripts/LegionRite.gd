extends Node

var revenants = []
const MAX_REVENANTS = 3

func summon_revenant(position):
    var revenant = Node3D.new()
    var mesh = MeshInstance3D.new()
    mesh.mesh = BoxMesh.new()
    revenant.add_child(mesh)
    revenant.global_position = position
    add_child(revenant)
    revenants.append(revenant)

    if revenants.size() > MAX_REVENANTS:
        var oldest = revenants.pop_front()
        oldest.queue_free()

    print("Revenant summoned")
