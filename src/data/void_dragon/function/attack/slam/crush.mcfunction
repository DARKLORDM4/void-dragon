# context: a player right under the slam
execute unless score dragon_difficulty vd.cfg matches 1.. run damage @s 12 void_dragon:void_crush by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 run damage @s 16.8 void_dragon:void_crush by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. run damage @s 21.6 void_dragon:void_crush by @n[type=ender_dragon]
