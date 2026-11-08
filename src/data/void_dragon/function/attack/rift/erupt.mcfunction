particle reverse_portal ~ ~1 ~ .4 2 .4 .3 60 force @a[distance=..128]
particle dust{color:[1.0,0.1,0.3],scale:2.5} ~ ~1.5 ~ .3 1.5 .3 0 20 force @a[distance=..128]
particle explosion ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..128]
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..48] ~ ~ ~ 2 .6
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2.2] run function void_dragon:attack/rift/hit
function void_dragon:attack/break_pearls
kill @s[type=marker]
