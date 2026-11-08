kill @e[type=#minecraft:arrows,distance=..1.6,limit=1,sort=nearest]
particle end_rod ~ ~ ~ .3 .3 .3 .2 30 force @a[distance=..96]
playsound minecraft:block.amethyst_block.resonate hostile @a[distance=..48] ~ ~ ~ 3 1.6
kill @s[type=marker]
