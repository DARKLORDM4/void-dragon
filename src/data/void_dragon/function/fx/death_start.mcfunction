# context: as/at the Ender Dragon on the tick it starts dying (any way it dies).
# Starts the death animation right now: makes sure a tracker sits on the dragon, then begins the collapse.
execute unless entity @e[type=marker,tag=vd.dtrack] run summon marker ~ ~ ~ {Tags:["vd.dtrack"]}
execute as @e[type=marker,tag=vd.dtrack,tag=!vd.ddying] run tp @s ~ ~ ~
execute as @e[type=marker,tag=vd.dtrack,tag=!vd.ddying] at @s run function void_dragon:fx/death_begin
