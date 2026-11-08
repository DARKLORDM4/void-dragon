# context: the dragon, tick 4361. THE SCREAM.
tag @a remove vd.shrieked
effect give @s minecraft:glowing 11 0 true
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 16 .5 .8
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 16 .8 .8
playsound minecraft:entity.ender_dragon.death hostile @a[distance=..256] ~ ~ ~ 16 1.3 .8
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] ~ ~ ~ 16 .5 .8
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] ~ ~ ~ 16 .8 .8
playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..256] ~ ~ ~ 16 .6 .8
playsound minecraft:entity.generic.explode hostile @a[distance=..256] ~ ~ ~ 16 .5 .8
title @a[distance=..256] actionbar {"text":"The dragon is exhausted","color":"gold","bold":true}
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 4 force @a[distance=..256]
particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]
particle end_rod ~ ~ ~ 6 6 6 1.2 400 force @a[distance=..256]
particle dragon_breath ~ ~ ~ 6 6 6 .3 300 force @a[distance=..256]
particle reverse_portal ~ ~ ~ 4 4 4 1 200 force @a[distance=..256]
# WEAK WINDOW: everyone near the dragon hits much harder for 8 seconds
execute in the_end positioned 0 80 0 run effect give @a[gamemode=!creative,gamemode=!spectator,distance=..128] minecraft:strength 10 1 true
