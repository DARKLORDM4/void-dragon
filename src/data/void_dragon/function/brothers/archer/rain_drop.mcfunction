# context: as/at a Starfall marker. 3 arrows per tick: one in the centre, one at 1.5 blocks, one at 3 blocks (spinning pattern).
summon arrow ~ ~16 ~ {Motion:[0.0d,-3.0d,0.0d],pickup:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:slow_falling",amplifier:0,duration:100}]}}},damage:2.5d,crit:1b,Tags:["vd.bro_arrow","vd.bro_new"]}
execute rotated as @s run summon arrow ^ ^16 ^1.5 {Motion:[0.0d,-3.0d,0.0d],pickup:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:slow_falling",amplifier:0,duration:100}]}}},damage:2.5d,crit:1b,Tags:["vd.bro_arrow","vd.bro_new"]}
execute rotated as @s rotated ~180 0 run summon arrow ^ ^16 ^3 {Motion:[0.0d,-3.0d,0.0d],pickup:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:slow_falling",amplifier:0,duration:100}]}}},damage:2.5d,crit:1b,Tags:["vd.bro_arrow","vd.bro_new"]}
execute rotated as @s rotated ~90 0 run particle reverse_portal ^ ^10 ^2 .5 3 .5 0 4 force @a[distance=..64]
execute as @e[type=arrow,tag=vd.bro_new] run data modify entity @s Owner set from entity @n[type=stray,tag=vd.bro_archer] UUID
tag @e[type=arrow,tag=vd.bro_new] remove vd.bro_new
tp @s ~ ~ ~ ~131 ~
