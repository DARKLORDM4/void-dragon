# context: as/at a Starfall marker, every tick
scoreboard players add @s vd.bro 1
tp @s ~ ~ ~ ~8 ~
# the mark slowly follows its target (0.25 blocks/tick): you must keep moving to escape it
execute if score @s vd.bro matches ..55 facing entity @a[tag=vd.bro_raint,limit=1] feet positioned ^ ^ ^0.25 unless entity @a[tag=vd.bro_raint,distance=..0.3] run tp @s ~ ~ ~
execute if score @s vd.bro matches 61.. run tag @a remove vd.bro_raint
execute if score @s vd.bro matches ..30 run function void_dragon:brothers/archer/rain_ring
execute if score @s vd.bro matches 30 run playsound minecraft:entity.arrow.shoot hostile @a[distance=..48] ~ ~10 ~ 4 .5
execute if score @s vd.bro matches 30..60 run function void_dragon:brothers/archer/rain_drop
# anyone still standing inside the circle is struck for sure 3 times (the falling arrows alone could miss you)
execute if score @s vd.bro matches 33 as @a[distance=..3.4,gamemode=!creative,gamemode=!spectator] run function void_dragon:brothers/archer/rain_hit
execute if score @s vd.bro matches 43 as @a[distance=..3.4,gamemode=!creative,gamemode=!spectator] run function void_dragon:brothers/archer/rain_hit
execute if score @s vd.bro matches 53 as @a[distance=..3.4,gamemode=!creative,gamemode=!spectator] run function void_dragon:brothers/archer/rain_hit
execute if score @s vd.bro matches 61.. run kill @s
