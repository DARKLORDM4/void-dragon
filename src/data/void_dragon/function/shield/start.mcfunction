# context: the dragon, once, when it first drops to 50% health.
tag @s add vd.shieldphase_done
scoreboard players reset shield_hp vd.state
scoreboard players set shield_up vd.state 1
scoreboard players set shield_mode vd.state 0
scoreboard players set shield_kills vd.state 0
scoreboard players set shield_t vd.state 0
scoreboard players operation shield_need vd.state = shield_crystals vd.cfg
execute store result bossbar void_dragon:shield max run scoreboard players get shield_need vd.state
execute store result bossbar void_dragon:shield value run scoreboard players get shield_kills vd.state
execute positioned 0 80 0 run bossbar set void_dragon:shield players @a[distance=..180]
bossbar set void_dragon:shield visible true
data merge entity @s {Invulnerable:1b}

# only the destroyed crystals on the original (closer) towers come back so the shield can be broken
function void_dragon:towers/relight_inner_silent

title @a[distance=..256] times 10 70 20
title @a[distance=..256] subtitle [{"text":"Destroy ","color":"aqua"},{"score":{"name":"shield_need","objective":"vd.state"},"color":"yellow"},{"text":" crystals to break it","color":"aqua"}]
title @a[distance=..256] title {"text":""}
playsound minecraft:block.beacon.activate hostile @a[distance=..256] ~ ~ ~ 10 1.5
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .7
