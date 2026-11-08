# context: positioned at a crystal that was just (re)lit
playsound minecraft:block.beacon.power_select hostile @a[distance=..128] ~ ~ ~ 4 1.4
playsound minecraft:block.amethyst_block.place hostile @a[distance=..128] ~ ~ ~ 4 .6
playsound minecraft:entity.generic.explode hostile @a[distance=..128] ~ ~ ~ 3 1.3
particle explosion ~ ~1 ~ .5 .5 .5 0 4 force @a[distance=..160]
particle end_rod ~ ~1 ~ .2 .2 .2 .3 40 force @a[distance=..160]
particle end_rod ~ ~ ~ 0 20 0 .1 60 force @a[distance=..256]
particle dragon_breath ~ ~1 ~ .6 .6 .6 .05 40 force @a[distance=..160]
function void_dragon:towers/flash
