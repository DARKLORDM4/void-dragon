# context: as/at the dragon, plunging into the locked circle; it keeps speeding up until it hits
execute at @n[type=marker,tag=vd.dive_spot] positioned ~ ~2 ~ if entity @s[distance=..4.5] run return run function void_dragon:attack/dive/impact
execute at @n[type=marker,tag=vd.dive_spot] run tp @n[type=marker,tag=vd.aim] ~ ~ ~
function void_dragon:attack/dive/fly {want:400,acc:22,turn:140}
particle dragon_breath ~ ~1 ~ 1.5 1 1.5 .02 10 force @a[distance=..200]
execute if score @s vd.spd matches 250.. run particle cloud ~ ~1 ~ 1 1 1 .05 4 force @a[distance=..200]
execute if score @s vd.act matches 5110 run function void_dragon:attack/dive/impact
