# context: the dragon, starting a scripted flight. Its heading starts where it is really flying
# (the dragon model faces the opposite way of its Rotation, hence the +180).
kill @e[type=marker,tag=vd.dir]
kill @e[type=marker,tag=vd.aim]
summon marker ~ ~ ~ {Tags:["vd.dir"]}
summon marker ~ ~ ~ {Tags:["vd.aim"]}
execute store result score @s vd.hdy run data get entity @s Rotation[0] 10
scoreboard players add @s vd.hdy 1800
scoreboard players set @s vd.hdp 0
scoreboard players set @s vd.spd 80
