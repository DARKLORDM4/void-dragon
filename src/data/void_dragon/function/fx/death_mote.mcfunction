# as/at a mote: it drifts toward the dying dragon on a curving path (heading bent 28 degrees),
# so the streams wind into it the same way the island's streamers spiral up
scoreboard players add @s vd.age 1
execute facing entity @n[type=marker,tag=vd.dtrack] feet rotated ~28 ~ run tp @s ^ ^ ^0.5
execute at @s run particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[distance=..200]
execute at @s facing entity @n[type=marker,tag=vd.dtrack] feet rotated ~28 ~ run tp @s ^ ^ ^0.5
execute at @s run particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[distance=..200]
execute at @s if predicate void_dragon:odds/20 run particle dust{color:[0.75,0.45,1.0],scale:0.9} ~ ~ ~ 0 0 0 0 1 force @a[distance=..200]
execute at @s if entity @e[type=marker,tag=vd.dtrack,distance=..2.5] run particle end_rod ~ ~ ~ .2 .2 .2 .03 3 force @a[distance=..200]
execute at @s if entity @e[type=marker,tag=vd.dtrack,distance=..2.5] run kill @s
execute if score @s vd.age matches 150.. run kill @s
