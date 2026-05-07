extends Node3D

func die():
    LegionRite.summon_revenant(global_position)
    queue_free()
