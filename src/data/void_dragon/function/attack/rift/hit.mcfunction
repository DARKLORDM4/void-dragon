# context: a fighter standing on the rift when it erupted
execute unless score dragon_difficulty vd.cfg matches 1.. run damage @s 18 void_dragon:void_crush by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 run damage @s 25.2 void_dragon:void_crush by @n[type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. run damage @s 32.4 void_dragon:void_crush by @n[type=ender_dragon]
effect give @s levitation 1 10 true
# the ground heaves: a blast just under and behind the fighter throws them up and away from the crack
execute rotated ~ 0 positioned ^ ^-0.4 ^-0.8 run summon armor_stand ~ ~ ~ {Tags:["vd.blast"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"void_dragon:rift_heave":1}}}}}
