# context: the dive circle before it locks: it trails the nearest fighter to it, a little slowly
execute at @s unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..60] run return 0
execute at @s facing entity @p[gamemode=!creative,gamemode=!spectator] feet unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..0.8] run tp @s ^ ^ ^0.6
execute at @s if entity @p[gamemode=!creative,gamemode=!spectator,distance=..0.8] run tp @s @p[gamemode=!creative,gamemode=!spectator]

# keep the circle on the ground under the fighter, even when they jump or pillar up
execute at @s run function void_dragon:attack/dive/ground
