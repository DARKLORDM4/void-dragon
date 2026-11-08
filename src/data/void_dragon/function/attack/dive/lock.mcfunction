# context: the dragon. The dive spot stops following: get out of the circle!
execute as @e[type=marker,tag=vd.dive_spot] at @s run function void_dragon:attack/dive/ground
# no solid ground under the circle (fighter is over the void): call the dive off
execute unless entity @e[type=marker,tag=vd.dive_spot,tag=vd.grounded] run return run function void_dragon:attack/dive/abort
execute as @e[type=marker,tag=vd.dive_spot] at @s run tp @s ~ ~ ~
execute at @n[type=marker,tag=vd.dive_spot] run playsound minecraft:block.respawn_anchor.set_spawn hostile @a[distance=..64] ~ ~ ~ 4 .6
execute at @n[type=marker,tag=vd.dive_spot] run particle flash{color:[1.0,0.3,0.9,1.0]} ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..128]
title @a[distance=..200] actionbar {"text":"The dragon has locked on - leave the circle!","color":"red","bold":true}
