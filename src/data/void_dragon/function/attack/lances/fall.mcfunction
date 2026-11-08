particle reverse_portal ~ ~ ~ .1 .8 .1 0 6 force @a[distance=..96]
particle dust{color:[0.6,0.1,0.9],scale:2.0} ~ ~ ~ .1 .5 .1 0 3 force @a[distance=..96]
execute unless block ~ ~-1 ~ #void_dragon:passable run return run function void_dragon:attack/lances/impact
execute unless block ~ ~-2 ~ #void_dragon:passable positioned ~ ~-1 ~ run return run function void_dragon:attack/lances/impact
execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run return run function void_dragon:attack/lances/impact
execute if score @s vd.lt matches 70.. run return run kill @s
tp @s ~ ~-2.5 ~
