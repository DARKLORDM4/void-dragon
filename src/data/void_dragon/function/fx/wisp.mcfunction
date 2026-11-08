# a slow void wisp: a ring that drifts outward from a random spot of the island (only looks)
summon marker ~ ~ ~ {Tags:["vd.wispdir"]}
execute as @e[type=marker,tag=vd.wispdir] store result entity @s Rotation[0] float 1 run random value 0..359
execute store result storage void_dragon:storage fx.d int 1 run random value 10..55
execute as @e[type=marker,tag=vd.wispdir] at @s run function void_dragon:fx/wisp_place with storage void_dragon:storage fx
kill @e[type=marker,tag=vd.wispdir]
