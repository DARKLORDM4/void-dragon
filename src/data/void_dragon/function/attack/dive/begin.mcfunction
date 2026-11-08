# context: the dragon. Actually launches the Void Dive (also used by the test command, which skips the setting).
# only fighters standing on solid ground can be targeted (no dives onto someone in mid-air)
execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..128,predicate=void_dragon:on_ground] run return 0
kill @e[type=marker,tag=vd.dive_spot]
kill @e[type=marker,tag=vd.dive_pivot]
execute as @r[gamemode=!creative,gamemode=!spectator,distance=..128,predicate=void_dragon:on_ground] at @s run summon marker ~ ~ ~ {Tags:["vd.dive_spot"]}
execute as @n[type=marker,tag=vd.dive_spot] at @s run function void_dragon:attack/dive/ground
scoreboard players set #divecd vd.state 40
execute at @n[type=marker,tag=vd.dive_spot] facing entity @s feet run summon marker ~ ~ ~ {Tags:["vd.dive_pivot"]}
execute as @n[type=marker,tag=vd.dive_pivot] at @s facing entity @n[type=ender_dragon] feet run tp @s ~ ~ ~ ~ 0
function void_dragon:dragon/steer/init
scoreboard players set @s vd.act 5000
