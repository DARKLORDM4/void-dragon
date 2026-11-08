# context: as/at a shielded crystal whose guard is dead
data merge entity @s {Invulnerable:0b}
data modify entity @s CustomName set value {"text":"Crystal (shield down)","color":"aqua"}
tag @s remove vd.shielded
playsound minecraft:block.glass.break hostile @a[distance=..64] ~ ~ ~ 3 1.2
particle end_rod ~ ~1 ~ .5 .5 .5 .2 30 force @a[distance=..96]
