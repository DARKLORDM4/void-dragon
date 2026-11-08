# context: as/at a player being pushed (vd.push 1..20). 0.75 blocks per tick away from the centre for 20 ticks = 15 blocks total.
# It only moves into free air, but the void does not matter.
execute if score @s vd.push matches 1..3 facing 0 ~ 0 positioned ^ ^0.25 ^-0.75 if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable run tp @s ~ ~ ~
execute if score @s vd.push matches 4..20 facing 0 ~ 0 positioned ^ ^ ^-0.75 if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable run tp @s ~ ~ ~
particle cloud ~ ~1 ~ .2 .4 .2 .05 3 force @a[distance=..48]
scoreboard players add @s vd.push 1
execute if score @s vd.push matches 21.. run scoreboard players reset @s vd.push
