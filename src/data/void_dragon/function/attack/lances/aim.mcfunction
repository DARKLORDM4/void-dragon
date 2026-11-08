# context: as/at a fighter. One lance right above them and two more 5 blocks away.
summon marker ~ ~22 ~ {Tags:["vd.lance","vd.lance_new"]}
summon marker ~ ~22 ~ {Tags:["vd.lance","vd.lance_new","vd.lance_side"]}
summon marker ~ ~22 ~ {Tags:["vd.lance","vd.lance_new","vd.lance_side"]}
execute as @e[type=marker,tag=vd.lance_side,tag=vd.lance_new] store result entity @s Rotation[0] float 1 run random value 0..359
execute as @e[type=marker,tag=vd.lance_side,tag=vd.lance_new] at @s run tp @s ^ ^ ^5
scoreboard players set @e[type=marker,tag=vd.lance_new] vd.lt 0
tag @e[type=marker,tag=vd.lance_new] remove vd.lance_side
tag @e[type=marker,tag=vd.lance_new] remove vd.lance_new
