# context: as/at VEXIS
tag @a remove vd.bro_snipet
tag @a[tag=vd.bro_tgt,limit=1] add vd.bro_snipet
tag @s add vd.bro_snipe
scoreboard players set @s vd.bro2 0
title @a[tag=vd.bro_snipet] actionbar {"text":"◎ VEXIS is aiming at you - break his line of sight!","color":"red","bold":true}
playsound minecraft:item.crossbow.loading_start hostile @a[distance=..64] ~ ~ ~ 3 .5
playsound minecraft:block.beacon.power_select hostile @a[tag=vd.bro_snipet] ~ ~ ~ 1 1.8
