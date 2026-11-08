# context: a Cage Warden, positioned 8 blocks over its cage. Makes that spot the point it circles around.
summon marker ~ ~ ~ {Tags:["vd.whome"]}
data modify entity @s anchor_pos set value [I;0,0,0]
execute store result entity @s anchor_pos[0] int 1 run data get entity @n[type=marker,tag=vd.whome] Pos[0]
execute store result entity @s anchor_pos[1] int 1 run data get entity @n[type=marker,tag=vd.whome] Pos[1]
execute store result entity @s anchor_pos[2] int 1 run data get entity @n[type=marker,tag=vd.whome] Pos[2]
kill @e[type=marker,tag=vd.whome]
