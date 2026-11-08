# in the End at 0 80 0, twice a second while someone is near the island. ambience: 1 = full, 2 = reduced, 0 = off
execute as @a[distance=..160] at @s run particle reverse_portal ~ ~6 ~ 14 4 14 0.01 4 normal @s
execute if score ambience vd.cfg matches 1 as @a[distance=..160] at @s run particle reverse_portal ~ ~6 ~ 14 4 14 0.01 6 normal @s
execute if score ambience vd.cfg matches 1 as @a[distance=..160] at @s run particle end_rod ~ ~10 ~ 18 6 18 0.003 1 normal @s
# drifting void rings: only while the island is quiet (no dragon), never during the fight
execute if score ambience vd.cfg matches 1 unless entity @e[type=ender_dragon,distance=..320] if predicate void_dragon:odds/25 positioned 0 64 0 run function void_dragon:fx/wisp
execute if score ambience vd.cfg matches 1 if entity @e[type=ender_dragon,distance=..320] run particle dust{color:[0.4,0.0,0.6],scale:2.0} 0 70 0 1.5 6 1.5 0 6 force @a[distance=..128]
# void streamers spiralling up out of the island (Full: steady stream, more while the dragon lives; Reduced: a few)
execute store result score #streamers vd.tmp if entity @e[type=marker,tag=vd.streamer]
execute if score ambience vd.cfg matches 1 positioned 0 64 0 run function void_dragon:fx/streamer/spawn
execute if score ambience vd.cfg matches 1 if entity @e[type=ender_dragon,distance=..320] if predicate void_dragon:odds/50 positioned 0 64 0 run function void_dragon:fx/streamer/spawn
execute if score ambience vd.cfg matches 2 if predicate void_dragon:odds/33 positioned 0 64 0 run function void_dragon:fx/streamer/spawn
