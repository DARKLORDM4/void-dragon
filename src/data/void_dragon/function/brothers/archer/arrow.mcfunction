# context: as VEXIS, at his eyes, rotated in the flight direction
summon arrow ^ ^ ^1.5 {Tags:["vd.bro_arrow","vd.bro_new"],pickup:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:slow_falling",amplifier:0,duration:100}]}}},damage:2.5d,crit:1b}
particle reverse_portal ^ ^ ^1.5 .1 .1 .1 .05 6 force @a[distance=..64]
execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^2.4 {Tags:["vd.bro_dir"]}
execute as @e[type=arrow,tag=vd.bro_new] run data modify entity @s Motion set from entity @n[type=marker,tag=vd.bro_dir] Pos
execute as @e[type=arrow,tag=vd.bro_new] run data modify entity @s Owner set from entity @n[type=stray,tag=vd.bro_archer] UUID
kill @e[type=marker,tag=vd.bro_dir]
tag @e[type=arrow,tag=vd.bro_new] remove vd.bro_new
