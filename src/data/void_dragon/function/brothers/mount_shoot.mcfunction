# context: as/at Nightmaw. Fires a homing shulker bullet at up to 2 random players.
scoreboard players set @s vd.bro 0
playsound minecraft:entity.shulker.shoot hostile @a[distance=..48] ~ ~ ~ 3 .6
playsound minecraft:entity.phantom.bite hostile @a[distance=..48] ~ ~ ~ 2 .5
execute as @a[distance=..32,gamemode=!creative,gamemode=!spectator,sort=random,limit=2] run function void_dragon:brothers/mount_bullet
