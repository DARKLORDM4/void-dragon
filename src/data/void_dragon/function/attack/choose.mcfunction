# context: the dragon, once a second while idle. Before 2/3 health only Void Fire and Void Lances;
# after that the full set. Chances are per second at x1 and grow with the Attack Speed setting.
execute if entity @s[tag=!vd.stage2] run function void_dragon:attack/roll/roll_early
execute if entity @s[tag=vd.stage2] if score @s vd.hp matches 101.. run function void_dragon:attack/roll/roll
function void_dragon:attack/roll/signature
