# context: the dragon at 50% health. Shield that only breaks when both Voidborn Brothers are dead.
tag @s add vd.shieldphase_done
scoreboard players reset shield_hp vd.state
scoreboard players set shield_up vd.state 1
scoreboard players set shield_mode vd.state 2
scoreboard players set shield_t vd.state 0
scoreboard players set shield_kills vd.state 0
scoreboard players set shield_need vd.state 2147483647
bossbar set void_dragon:shield name {"text":"Dragon Shield - defeat the Voidborn Brothers","color":"aqua","bold":true}
bossbar set void_dragon:shield style notched_6
bossbar set void_dragon:shield max 2
bossbar set void_dragon:shield value 2
execute positioned 0 80 0 run bossbar set void_dragon:shield players @a[distance=..180]
bossbar set void_dragon:shield visible true
data merge entity @s {Invulnerable:1b}
playsound minecraft:block.beacon.activate hostile @a[distance=..256] ~ ~ ~ 10 1.5
function void_dragon:phase/name/apply
