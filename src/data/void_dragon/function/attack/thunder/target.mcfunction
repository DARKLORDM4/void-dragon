# context: as/at a targeted player.
# 1 strike right on the player + 2 scattered strikes 7 blocks away in random directions
summon marker ~ ~ ~ {Tags:["vd.thunder","vd.thunder_new"]}

summon marker ~ ~ ~ {Tags:["vd.thunder","vd.thunder_new","vd.thunder_scatter"]}
summon marker ~ ~ ~ {Tags:["vd.thunder","vd.thunder_new","vd.thunder_scatter"]}
execute as @e[type=marker,tag=vd.thunder_scatter] at @s store result entity @s Rotation[0] float 1 run random value 0..359
execute as @e[type=marker,tag=vd.thunder_scatter] at @s run tp @s ^ ^ ^7
tag @e[type=marker,tag=vd.thunder_scatter] remove vd.thunder_scatter
