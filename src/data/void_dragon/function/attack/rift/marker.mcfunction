# context: a point of the rift. Glows red for 2 s, then erupts; the eruption runs along the line, 1 point per tick.
scoreboard players add @s vd.rt 1
execute unless entity @e[type=ender_dragon,distance=..300] run return run kill @s
scoreboard players operation #go vd.tmp = @s vd.ro
scoreboard players add #go vd.tmp 40
execute if score @s vd.rt < #go vd.tmp if score #even vd.clock matches 1 run particle dust{color:[1.0,0.1,0.2],scale:1.6} ~ ~0.2 ~ .6 0 .6 0 3 force @a[distance=..128]
execute if score @s vd.rt < #go vd.tmp if score #quarter vd.clock matches 1 run particle crimson_spore ~ ~0.5 ~ .5 .2 .5 0 4 force @a[distance=..128]
execute if score @s vd.rt = #go vd.tmp run function void_dragon:attack/rift/erupt
