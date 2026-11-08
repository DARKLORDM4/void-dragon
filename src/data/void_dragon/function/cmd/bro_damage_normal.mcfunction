scoreboard players set bro_damage vd.cfg 0
execute as @e[tag=vd.brother] run function void_dragon:brothers/power
tellraw @s {"text":"Brothers damage set to normal.","color":"gray"}
