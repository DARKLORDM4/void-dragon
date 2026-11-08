# usage: /function void_dragon:cmd/dragon_health {hp:5000}   (any amount from 1 up)
# Sets the dragon health setting. A dragon already fighting is resized too, keeping its current share of health.
$scoreboard players set dragonhealth vd.cfg $(hp)
execute as @e[type=ender_dragon,tag=vd.known] at @s run function void_dragon:dragon/resize
tellraw @s [{"text":"Dragon health set to ","color":"gray"},{"score":{"name":"dragonhealth","objective":"vd.cfg"},"color":"light_purple"},{"text":".","color":"gray"}]
execute if score dragonhealth vd.cfg matches 1025.. run tellraw @s {"text":"Above 1024 the boss bar shows the share left, and each hit is scaled so the full amount has to be dealt.","color":"dark_gray"}
