# context: as/at VEXIS (on foot). Blinks away and immediately fires a volley.
particle portal ~ ~1 ~ .5 1 .5 1.5 80 force @a[distance=..64]
playsound minecraft:entity.enderman.teleport hostile @a[distance=..48] ~ ~ ~ 2 .8
function void_dragon:brothers/blink
execute at @s run particle reverse_portal ~ ~1 ~ .5 1 .5 .3 80 force @a[distance=..64]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..48] ~ ~ ~ 2 1.2
execute at @s run function void_dragon:brothers/archer/volley
