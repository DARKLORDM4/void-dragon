# context: the dragon. The shield is broken (enough crystals destroyed) or faded (180 seconds).
scoreboard players reset shield_hp vd.state
scoreboard players set shield_up vd.state 0
scoreboard players set shield_mode vd.state 0
bossbar set void_dragon:shield name {"text":"Crystal Shield","color":"aqua","bold":true}
bossbar set void_dragon:shield style notched_6
data merge entity @s {Invulnerable:0b}
bossbar set void_dragon:shield visible false
bossbar set void_dragon:shield players
title @a[distance=..256] times 5 50 20
title @a[distance=..256] subtitle {"text":"The dragon's shield shatters!","color":"aqua"}
title @a[distance=..256] title {"text":""}
playsound minecraft:block.glass.break hostile @a[distance=..256] ~ ~ ~ 10 .6
playsound minecraft:entity.generic.explode hostile @a[distance=..256] ~ ~ ~ 10 .8
particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force @a[distance=..128]
particle end_rod ~ ~1.5 ~ 3 2 3 .5 150 force @a[distance=..128]

function void_dragon:phase/name/apply
# shockwave across the island
execute in the_end positioned 0 64.3 0 run function void_dragon:fx/ring {kind:"star",r:20,dr:20,life:40}
