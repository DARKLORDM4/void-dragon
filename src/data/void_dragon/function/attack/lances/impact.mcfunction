# context: where a lance lands. 3-block blast that throws fighters up.
particle explosion ~ ~0.5 ~ 1 .2 1 0 4 force @a[distance=..96]
particle reverse_portal ~ ~0.5 ~ 1.2 .3 1.2 .5 80 force @a[distance=..96]
particle dust{color:[0.6,0.1,0.9],scale:2.5} ~ ~0.3 ~ 1.5 .1 1.5 0 30 force @a[distance=..96]
playsound minecraft:block.amethyst_block.break hostile @a[distance=..64] ~ ~ ~ 3 .5
playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 2 1.3
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function void_dragon:attack/lances/hit
function void_dragon:attack/break_pearls
kill @s[type=marker]
