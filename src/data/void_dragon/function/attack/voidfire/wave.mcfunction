execute as @a[gamemode=!creative,gamemode=!spectator,distance=..128,sort=random,limit=3] at @s run function void_dragon:attack/voidfire/shoot
playsound minecraft:entity.ender_dragon.shoot hostile @a[distance=..128] ~ ~ ~ 6 1
