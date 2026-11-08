# in the End, every tick. A marker rides on the dragon; when the dragon starts dying (DragonPhase 9) or
# vanishes from the selectors (a dying dragon at 0 health often does), the marker plays the death animation.
execute if entity @e[type=ender_dragon] unless entity @e[type=marker,tag=vd.dtrack] at @n[type=ender_dragon] run summon marker ~ ~ ~ {Tags:["vd.dtrack"]}
execute as @e[type=marker,tag=vd.dtrack,tag=!vd.ddying] at @s if entity @e[type=ender_dragon,distance=..80] run tp @s @n[type=ender_dragon]
execute as @e[type=marker,tag=vd.dtrack,tag=!vd.ddying] at @s if entity @n[type=ender_dragon,distance=..80,nbt={DragonPhase:9}] run function void_dragon:fx/death_begin
execute as @e[type=marker,tag=vd.dtrack,tag=!vd.ddying,tag=vd.dlow] at @s unless entity @e[type=ender_dragon,distance=..80] if entity @a[distance=..300] run function void_dragon:fx/death_begin
execute as @e[type=marker,tag=vd.dtrack,tag=!vd.ddying] at @s unless entity @e[type=ender_dragon,distance=..80] unless entity @a[distance=..300] run kill @s
# a tracker that lost the (living) dragon is replaced by a fresh one on it next tick
execute as @e[type=marker,tag=vd.dtrack,tag=!vd.ddying,tag=!vd.dlow] at @s unless entity @e[type=ender_dragon,distance=..80] run kill @s
execute as @e[type=marker,tag=vd.ddying] at @s run function void_dragon:fx/death_run
