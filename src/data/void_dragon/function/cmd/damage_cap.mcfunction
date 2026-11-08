# usage: /function void_dragon:cmd/damage_cap {amount:18}   (0 turns the cap off)
$scoreboard players set dmg_cap vd.cfg $(amount)
execute if score dmg_cap vd.cfg matches ..0 run scoreboard players set dmg_cap vd.cfg 0
execute if score dmg_cap vd.cfg matches 0 run tellraw @s {"text":"Damage cap turned off: any hit counts in full.","color":"gray"}
execute if score dmg_cap vd.cfg matches 1.. run tellraw @s [{"text":"Damage cap set: one hit takes at most ","color":"gray"},{"score":{"name":"dmg_cap","objective":"vd.cfg"},"color":"light_purple"},{"text":" health from the dragon.","color":"gray"}]
