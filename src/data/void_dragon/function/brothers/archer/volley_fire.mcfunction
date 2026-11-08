# context: as/at VEXIS. A fan of 5 arrows at the nearest player.
execute unless entity @p[distance=..56,gamemode=!creative,gamemode=!spectator] run return 0
playsound minecraft:entity.skeleton.shoot hostile @a[distance=..64] ~ ~ ~ 3 .6
playsound minecraft:entity.enderman.teleport hostile @a[distance=..64] ~ ~ ~ 1 1.8
execute anchored eyes positioned ^ ^ ^ facing entity @p[distance=..56,gamemode=!creative,gamemode=!spectator] eyes rotated ~-16 ~ run function void_dragon:brothers/archer/arrow
execute anchored eyes positioned ^ ^ ^ facing entity @p[distance=..56,gamemode=!creative,gamemode=!spectator] eyes rotated ~-8 ~ run function void_dragon:brothers/archer/arrow
execute anchored eyes positioned ^ ^ ^ facing entity @p[distance=..56,gamemode=!creative,gamemode=!spectator] eyes run function void_dragon:brothers/archer/arrow
execute anchored eyes positioned ^ ^ ^ facing entity @p[distance=..56,gamemode=!creative,gamemode=!spectator] eyes rotated ~8 ~ run function void_dragon:brothers/archer/arrow
execute anchored eyes positioned ^ ^ ^ facing entity @p[distance=..56,gamemode=!creative,gamemode=!spectator] eyes rotated ~16 ~ run function void_dragon:brothers/archer/arrow
