# context: the dragon, once per second
# a crystal spot whose crystal exists counts as alive (so its destruction can be detected)
execute as @e[type=marker,tag=vd.crystalspot,tag=!vd.alive] at @s if entity @e[type=end_crystal,distance=..1.5] run tag @s add vd.alive
execute if score tower_affixes vd.cfg matches 1 run function void_dragon:towers/affix/second
