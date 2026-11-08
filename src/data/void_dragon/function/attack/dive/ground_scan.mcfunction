# context: a position being checked for ground, starting at the dive marker and stepping down
execute unless block ~ ~-1 ~ #minecraft:replaceable run return run function void_dragon:attack/dive/ground_set
scoreboard players remove #g vd.tmp 1
execute if score #g vd.tmp matches 1.. positioned ~ ~-1 ~ run function void_dragon:attack/dive/ground_scan
