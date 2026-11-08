# context: as/at KETHLER. Leaps toward the target, shockwave on landing.
tag @s add vd.bro_slam
scoreboard players set @s vd.bro2 0
title @a[distance=..24] actionbar {"text":"⚠ KETHLER leaps into the air - get away!","color":"dark_purple","bold":true}
playsound minecraft:entity.ravager.roar hostile @a[distance=..48] ~ ~ ~ 2 .7
particle reverse_portal ~ ~ ~ 1 .2 1 .2 60 force @a[distance=..64]
execute facing entity @a[tag=vd.bro_tgt,limit=1] feet rotated ~ 0 positioned 0.0 0.0 0.0 run summon marker ^ ^ ^0.55 {Tags:["vd.bro_dir"]}
data modify entity @s Motion set from entity @n[type=marker,tag=vd.bro_dir] Pos
data modify entity @s Motion[1] set value 1.1d
kill @e[type=marker,tag=vd.bro_dir]
