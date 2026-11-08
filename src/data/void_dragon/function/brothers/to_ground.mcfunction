# context: as/at a brother. Puts him on solid ground: straight below if there is ground, otherwise next to the nearest player,
# otherwise beside the exit portal.
scoreboard players set #ok vd.tmp 0
tag @s add vd.bro_self
execute positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run function void_dragon:brothers/blink_go
execute if score #ok vd.tmp matches 0 at @p[gamemode=!creative,gamemode=!spectator] rotated ~ 0 positioned ^ ^ ^-4 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run function void_dragon:brothers/blink_go
execute if score #ok vd.tmp matches 0 in the_end positioned 0 0 9 positioned over motion_blocking run function void_dragon:brothers/blink_go
tag @s remove vd.bro_self
execute at @s run particle reverse_portal ~ ~1 ~ .5 1 .5 .3 60 force @a[distance=..64]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..48] ~ ~ ~ 2 .8
