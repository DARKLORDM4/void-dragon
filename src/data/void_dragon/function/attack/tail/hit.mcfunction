# context: as/at a player the tail wave hit (on the ground). Damage by difficulty + a knock back away from the dragon.
tag @s add vd.tailhit
execute unless score dragon_difficulty vd.cfg matches 1.. run damage @s 14 void_dragon:void_strike by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 run damage @s 19.6 void_dragon:void_strike by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. run damage @s 25.2 void_dragon:void_strike by @n[type=ender_dragon]
execute facing entity @n[type=ender_dragon] feet rotated ~ 0 positioned ^ ^1.1 ^1.2 run summon armor_stand ~ ~ ~ {Tags:["vd.blast"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"void_dragon:tail_knock":1}}}}}
particle sweep_attack ~ ~1 ~ 0 0 0 0 1 force @a[distance=..64]
playsound minecraft:entity.player.attack.knockback hostile @a[distance=..32] ~ ~ ~ 2 .6
title @s actionbar {"text":"Tail Sweep! Jump over the wave!","color":"gold","bold":true}
