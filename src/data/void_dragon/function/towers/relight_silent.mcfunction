# context: the dragon. Queues every destroyed crystal (both rings) to be relit one by one, without the desperate title.
execute as @e[type=marker,tag=vd.crystalspot] at @s unless entity @e[type=end_crystal,distance=..1.5] run tag @s add vd.pending
scoreboard players set @s vd.reignite 1
