# same as wave, but the warning time is shorter
tag @e[type=marker,tag=vd.thunder_new] remove vd.thunder_new
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..128,sort=random,limit=5] at @s run function void_dragon:attack/thunder/target
tag @e[type=marker,tag=vd.thunder_new] add vd.thunder_fast
tag @e[type=marker,tag=vd.thunder_new] remove vd.thunder_new
