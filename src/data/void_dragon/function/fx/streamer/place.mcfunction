# macro: d = distance from the centre. Only on solid island ground.
$execute positioned ^ ^ ^$(d) positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable positioned ~ ~0.2 ~ run summon marker ~ ~ ~ {Tags:["vd.streamer","vd.snew"]}
execute as @e[type=marker,tag=vd.snew] store result entity @s Rotation[0] float 1 run random value 0..359
execute as @e[type=marker,tag=vd.snew] run data modify entity @s Rotation[1] set value -75.0f
execute as @e[type=marker,tag=vd.snew] at @s run particle reverse_portal ~ ~ ~ .3 .1 .3 .05 8 force @a[distance=..128]
tag @e[type=marker,tag=vd.snew] remove vd.snew
