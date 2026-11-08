# context: the dragon, the moment it drops to 1/3 health.
title @a[distance=..256] times 10 70 20
title @a[distance=..256] subtitle {"text":"The dragon is desperate","color":"red"}
title @a[distance=..256] title {"text":""}

playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .5
playsound minecraft:block.beacon.activate hostile @a[distance=..256] ~ ~ ~ 10 .6
particle dragon_breath ~ ~1.5 ~ 0 0 0 .4 150 force @a[distance=..256]

# only the ORIGINAL towers' crystals that are gone are queued (outer towers stay destroyed); reignite_tick relights them one by one
execute as @e[type=marker,tag=vd.innerspike] at @s unless entity @e[type=end_crystal,distance=..1.5] run tag @s add vd.pending
scoreboard players set @s vd.reignite 1
