# context: as/at a player whose boss music is running (vd.song = ticks since the track started)
scoreboard players add @s vd.song 1
execute if score @s vd.song matches 1 run function void_dragon:music/play with storage void_dragon:storage settings
execute if score @s vd.song >= music_loop_ticks vd.state run scoreboard players set @s vd.song 0
execute unless predicate void_dragon:where/in_end run return run function void_dragon:music/stop
execute positioned 0 80 0 unless entity @s[distance=..160] run return run function void_dragon:music/stop
execute positioned 0 80 0 unless entity @e[type=ender_dragon,distance=..320] run function void_dragon:music/stop
