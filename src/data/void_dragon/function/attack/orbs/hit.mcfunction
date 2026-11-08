# context: a fighter an orb burst on
execute unless score dragon_difficulty vd.cfg matches 1.. run damage @s 9 void_dragon:void_strike by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 run damage @s 12.6 void_dragon:void_strike by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. run damage @s 16.2 void_dragon:void_strike by @n[type=ender_dragon]
effect give @s darkness 4 0
effect give @s levitation 2 0
