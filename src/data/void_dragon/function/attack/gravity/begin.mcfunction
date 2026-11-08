# context: the dragon, first real tick of a Gravity Crash. Spawns the swirling void marker above the island centre.
kill @e[type=marker,tag=vd.crashfx]
execute in the_end run summon marker 0 75 0 {Tags:["vd.crashfx"]}
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 .5
playsound minecraft:block.portal.ambient hostile @a[distance=..256] ~ ~ ~ 8 .5
playsound minecraft:block.beacon.activate hostile @a[distance=..256] ~ ~ ~ 8 .5
