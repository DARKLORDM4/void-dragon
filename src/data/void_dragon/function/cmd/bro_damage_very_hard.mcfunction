scoreboard players set bro_damage vd.cfg 2
execute as @e[tag=vd.brother] run function void_dragon:brothers/power
tellraw @s {"text":"Brothers damage set to very hard.","color":"gray"}
