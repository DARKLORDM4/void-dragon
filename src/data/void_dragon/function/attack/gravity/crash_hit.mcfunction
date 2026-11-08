# context: as/at a player the crash wave just reached. Near the centre it hurts more.
tag @s add vd.crashed
particle explosion ~ ~1 ~ 0.3 0.5 0.3 0 2 force @a[distance=..64]
playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 1 .7
execute positioned 0 66 0 if entity @s[distance=..14] unless score dragon_difficulty vd.cfg matches 1.. run damage @s 24 void_dragon:void_strike by @n[type=ender_dragon]
execute positioned 0 66 0 if entity @s[distance=..14] if score dragon_difficulty vd.cfg matches 1 run damage @s 36 void_dragon:void_strike by @n[type=ender_dragon]
execute positioned 0 66 0 if entity @s[distance=..14] if score dragon_difficulty vd.cfg matches 2.. run damage @s 48 void_dragon:void_strike by @n[type=ender_dragon]
execute positioned 0 66 0 if entity @s[distance=14..] unless score dragon_difficulty vd.cfg matches 1.. run damage @s 20 void_dragon:void_strike by @n[type=ender_dragon]
execute positioned 0 66 0 if entity @s[distance=14..] if score dragon_difficulty vd.cfg matches 1 run damage @s 16 void_dragon:void_strike by @n[type=ender_dragon]
execute positioned 0 66 0 if entity @s[distance=14..] if score dragon_difficulty vd.cfg matches 2.. run damage @s 10 void_dragon:void_strike by @n[type=ender_dragon]
