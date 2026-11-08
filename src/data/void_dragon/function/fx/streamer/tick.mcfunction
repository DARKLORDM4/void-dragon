# as/at a void streamer: it spirals up out of the island, leaning outward as it climbs, then fades (about 4.5 s)
scoreboard players add @s vd.age 1
# every tick it turns 11 degrees and levels out a little, so the path is a widening upward corkscrew
tp @s ~ ~ ~ ~11 ~0.6
execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[distance=..160]
execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[distance=..160]
execute at @s if score @s vd.age matches 1..60 if predicate void_dragon:odds/25 run particle dust{color:[0.55,0.1,0.9],scale:0.8} ~ ~ ~ 0 0 0 0 1 force @a[distance=..160]
execute at @s if score @s vd.age matches 30.. if predicate void_dragon:odds/10 run particle end_rod ~ ~ ~ 0 0 0 0.01 1 force @a[distance=..160]
execute at @s unless block ~ ~ ~ #void_dragon:passable run scoreboard players set @s vd.age 90
execute at @s if score @s vd.age matches 90.. run particle reverse_portal ~ ~ ~ .2 .2 .2 .1 6 force @a[distance=..160]
execute if score @s vd.age matches 90.. run kill @s
