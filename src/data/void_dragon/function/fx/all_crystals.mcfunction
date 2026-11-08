# at the island centre: the last tower crystal just broke. The dragon screams and a white wave sweeps the island.
playsound minecraft:block.beacon.deactivate hostile @a[distance=..160] ~ ~ ~ 4 .7
playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..256] ~ ~ ~ 8 .5
playsound minecraft:block.glass.break hostile @a[distance=..256] ~ ~ ~ 6 .5
execute positioned 0 64.3 0 run function void_dragon:fx/ring {kind:"star",r:10,dr:25,life:40}
execute as @e[type=ender_dragon] at @s run particle end_rod ~ ~2 ~ 3 2 3 .3 120 force @a[distance=..200]
