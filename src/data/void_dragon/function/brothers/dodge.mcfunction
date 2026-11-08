# context: as/at a brother about to be hit by a mace smash. He teleports away (1.5 s cooldown).
tag @s add vd.bro_dodgecd
scoreboard players set @s vd.bro_dcd 30
particle portal ~ ~1 ~ .4 1 .4 1.5 80 force @a[distance=..64]
playsound minecraft:entity.enderman.teleport hostile @a[distance=..48] ~ ~ ~ 2 1.3
title @a[distance=..10,gamemode=!creative,gamemode=!spectator] actionbar {"text":"Dodged! He blinked away from your mace","color":"light_purple"}
scoreboard players set #m vd.tmp 0
execute on vehicle if entity @s[type=phantom] run scoreboard players set #m vd.tmp 1
execute if score #m vd.tmp matches 1 on vehicle at @s run function void_dragon:brothers/dodge_mount
execute if score #m vd.tmp matches 0 run function void_dragon:brothers/blink
