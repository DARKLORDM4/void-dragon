# at 0 64 0 in the End: picks a random spot of solid island ground and lets one mote of light rise from it
summon marker ~ ~ ~ {Tags:["vd.sdir"]}
execute as @e[type=marker,tag=vd.sdir] store result entity @s Rotation[0] float 1 run random value 0..359
execute store result storage void_dragon:storage dth.d int 1 run random value 6..55
execute as @e[type=marker,tag=vd.sdir] at @s run function void_dragon:fx/death_mote_place with storage void_dragon:storage dth
kill @e[type=marker,tag=vd.sdir]
