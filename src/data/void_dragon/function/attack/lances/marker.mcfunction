# context: as/at a lance. 0..29 hover and mark the ground, 30+ plunge 2.5 blocks per tick until it hits something.
scoreboard players add @s vd.lt 1
execute unless entity @e[type=ender_dragon,distance=..300] run return run kill @s
execute if score @s vd.lt matches ..29 run particle end_rod ~ ~ ~ .15 .6 .15 0 2 force @a[distance=..96]
execute if score @s vd.lt matches ..29 run particle dust{color:[0.35,0.0,0.6],scale:2.5} ~ ~ ~ .1 .8 .1 0 3 force @a[distance=..96]
execute if score @s vd.lt matches ..29 if score #even vd.clock matches 1 run function void_dragon:attack/lances/warn_ring
execute if score @s vd.lt matches 25 run playsound minecraft:item.trident.riptide_3 hostile @a[distance=..64] ~ ~ ~ 2 .6
execute if score @s vd.lt matches 30.. run function void_dragon:attack/lances/fall
