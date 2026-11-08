# context: the dragon. Opens a Rift Tear without the usual checks (used by the test command).
execute if score @s vd.rift matches 1.. run return 0
execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..128] run return run tellraw @a[distance=..256] {"text":"Rift Tear needs a player in survival within 128 blocks of the dragon.","color":"gray"}
scoreboard players set @s vd.rift 1
playsound minecraft:block.end_portal.spawn hostile @a[distance=..256] ~ ~ ~ 4 1.8
execute as @r[gamemode=!creative,gamemode=!spectator,distance=..128] at @s run function void_dragon:attack/rift/lay
