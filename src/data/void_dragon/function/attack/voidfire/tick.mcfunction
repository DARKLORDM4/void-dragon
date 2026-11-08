# context: as/at a Void Fireball marker, every tick. Moves 3 x 0.4 = 1.2 blocks per tick (24 blocks/second), checking for hits every 0.4 blocks.
scoreboard players add @s vd.age 1
execute if score @s vd.age matches 150.. run tag @s add vd.vdead
execute if entity @s[tag=vd.vdead] run kill @s
execute unless entity @s[tag=vd.vdead] at @s run function void_dragon:attack/voidfire/step
execute unless entity @s[tag=vd.vdead] at @s run function void_dragon:attack/voidfire/step
execute unless entity @s[tag=vd.vdead] at @s run function void_dragon:attack/voidfire/step
