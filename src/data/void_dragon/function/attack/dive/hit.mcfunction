# context: a player inside the dive circle when the dragon lands
execute unless score dragon_difficulty vd.cfg matches 1.. run damage @s 16 void_dragon:void_dive by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 run damage @s 22.4 void_dragon:void_dive by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. run damage @s 28.8 void_dragon:void_dive by @n[type=ender_dragon]
function void_dragon:attack/break_pearls
