# context: as/at VEXIS. Marks the target's position; 1.5 s later arrows rain down there.
tag @a[tag=vd.bro_tgt,limit=1] add vd.bro_raint
execute at @a[tag=vd.bro_tgt,limit=1] run summon marker ~ ~ ~ {Tags:["vd.bro_rain"]}
scoreboard players set @e[type=marker,tag=vd.bro_rain] vd.bro 0
title @a[tag=vd.bro_tgt] actionbar {"text":"⚠ VEXIS has marked you - MOVE!","color":"red","bold":true}
execute at @a[tag=vd.bro_tgt,limit=1] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..48] ~ ~ ~ 2 .6
playsound minecraft:entity.skeleton.shoot hostile @a[distance=..64] ~ ~ ~ 3 .4
particle reverse_portal ~ ~1.5 ~ 0 4 0 .3 60 force @a[distance=..96]
