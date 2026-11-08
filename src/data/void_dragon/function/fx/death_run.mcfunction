# context: as/at the death tracker, every tick of the collapse (about 10 s). It stays on the dragon while it can
# see it, otherwise it rises slowly like a dying dragon does.
execute if entity @e[type=ender_dragon,distance=..80] run tp @s @n[type=ender_dragon]
execute unless entity @e[type=ender_dragon,distance=..80] run tp @s ~ ~0.1 ~
execute at @s run function void_dragon:fx/death
execute if score @s vd.death matches 200.. run kill @s
