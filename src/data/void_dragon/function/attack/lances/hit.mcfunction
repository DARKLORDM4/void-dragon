# context: a fighter caught by a lance
execute unless score dragon_difficulty vd.cfg matches 1.. run damage @s 10 void_dragon:void_pierce by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 run damage @s 14.0 void_dragon:void_pierce by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. run damage @s 18.0 void_dragon:void_pierce by @n[type=ender_dragon]
effect give @s levitation 1 4 true
effect give @s slowness 2 1
