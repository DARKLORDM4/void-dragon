# context: the dragon. Actually launches the Void Quake (also used by the test command, which skips the setting).
execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..128] run return 0
kill @e[type=marker,tag=vd.slam_spot]
kill @e[type=marker,tag=vd.slam_pivot]
execute as @r[gamemode=!creative,gamemode=!spectator,distance=..128] at @s run summon marker ~ ~ ~ {Tags:["vd.slam_spot"]}
execute at @n[type=marker,tag=vd.slam_spot] run summon marker ~ ~ ~ {Tags:["vd.slam_pivot"]}
execute as @n[type=marker,tag=vd.slam_pivot] at @s facing entity @n[type=ender_dragon] feet run tp @s ~ ~ ~ ~ 0
function void_dragon:dragon/steer/init
scoreboard players set @s vd.act 5200
