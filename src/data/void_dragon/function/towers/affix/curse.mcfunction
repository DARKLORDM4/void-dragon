# context: as/at a tower marker whose CURSED crystal was just destroyed: everyone within 16 blocks is cursed
effect give @a[gamemode=!creative,gamemode=!spectator,distance=..16] blindness 4 0 true
effect give @a[gamemode=!creative,gamemode=!spectator,distance=..16] slowness 6 1 true
effect give @a[gamemode=!creative,gamemode=!spectator,distance=..16] weakness 8 0 true
particle dragon_breath ~ ~1 ~ 2 1 2 .1 80 force @a[distance=..96]
playsound minecraft:entity.wither.ambient hostile @a[distance=..64] ~ ~ ~ 3 .6
