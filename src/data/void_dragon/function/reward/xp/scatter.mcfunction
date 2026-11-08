# context: as/at one experience orb near the portal that has not been scattered yet.
tag @s add vd.scattered
tag @s add vd.scatnow
kill @e[type=marker,tag=vd.scatter]
summon marker ~ ~ ~ {Tags:["vd.scatter"]}
# random direction (0..359 degrees) and random distance (10..15 blocks)
execute as @n[type=marker,tag=vd.scatter] store result entity @s Rotation[0] float 1 run random value 0..359
execute store result score #sd vd.tmp run random value 10..15
execute as @n[type=marker,tag=vd.scatter] at @s run function void_dragon:reward/xp/scatter_move
kill @e[type=marker,tag=vd.scatter]
tag @s remove vd.scatnow
