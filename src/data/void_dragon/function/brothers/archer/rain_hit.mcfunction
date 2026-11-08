# context: a player inside VEXIS's Starfall circle while the arrows fall
execute unless score bro_damage vd.cfg matches 1.. run damage @s 4 minecraft:arrow by @n[type=stray,tag=vd.bro_archer]
execute if score bro_damage vd.cfg matches 1 run damage @s 5 minecraft:arrow by @n[type=stray,tag=vd.bro_archer]
execute if score bro_damage vd.cfg matches 2.. run damage @s 6 minecraft:arrow by @n[type=stray,tag=vd.bro_archer]
particle crit ~ ~1 ~ .3 .5 .3 .1 8 force @a[distance=..48]
