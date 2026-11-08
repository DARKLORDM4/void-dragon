# context: the dragon. Queues only the destroyed crystals of the ORIGINAL towers (inner ring) to be relit one by one.
# The 24 outer towers are left alone.
execute as @e[type=marker,tag=vd.innerspike] at @s unless entity @e[type=end_crystal,distance=..1.5] run tag @s add vd.pending
scoreboard players set @s vd.reignite 1
