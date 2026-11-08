# context: the dragon. Heals #heal (vd.tmp) health, never above its maximum.
execute store result score #now vd.tmp run data get entity @s Health
scoreboard players operation #now vd.tmp += #heal vd.tmp
scoreboard players operation #now vd.tmp < @s vd.health_max
execute store result entity @s Health float 1 run scoreboard players get #now vd.tmp
