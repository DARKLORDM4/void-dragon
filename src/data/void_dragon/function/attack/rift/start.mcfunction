# context: the dragon (desperate). RIFT TEAR: a crack opens across the whole island through a fighter and erupts end to end.
execute unless score rift_attack vd.cfg matches 1 run return 0
execute if score @s vd.rift matches 1.. run return 0
execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..128] run return 0
scoreboard players set @s vd.rift 1
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .4
playsound minecraft:block.end_portal.spawn hostile @a[distance=..256] ~ ~ ~ 4 1.8
execute as @r[gamemode=!creative,gamemode=!spectator,distance=..128] at @s run function void_dragon:attack/rift/lay
execute if score combo_attacks vd.cfg matches 1.. run function void_dragon:attack/thunder/combo
