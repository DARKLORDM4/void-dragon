# context: a player who didn't jump a quake ring
scoreboard players set @s vd.qcd 10
execute unless score dragon_difficulty vd.cfg matches 1.. run damage @s 7 void_dragon:void_quake by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 run damage @s 9.8 void_dragon:void_quake by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. run damage @s 12.6 void_dragon:void_quake by @n[type=ender_dragon]
effect give @s slowness 2 2 true
