# context: the dragon, once per second. Every living outer-ring crystal has a 50% chance per second to shoot
# a player within 12 blocks (players climbing or standing near the towers).
# TURRET-affix crystals shoot every second at up to 18 blocks.
execute as @e[type=marker,tag=vd.tall,tag=!vd.aff_turret] at @s if entity @e[type=end_crystal,distance=..1.5] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..12] if predicate void_dragon:odds/50 run function void_dragon:towers/turret/fire
execute as @e[type=marker,tag=vd.tall,tag=vd.aff_turret] at @s if entity @e[type=end_crystal,distance=..1.5] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..18] run function void_dragon:towers/turret/fire_plus
