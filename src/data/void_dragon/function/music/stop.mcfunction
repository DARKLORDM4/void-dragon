stopsound @s * void_dragon:boss_theme
execute if score music_debug vd.cfg matches 1 if score @s vd.song matches 1.. run tellraw @s {"text":"♪ Void Dragon theme stopped (you left the island or the dragon is gone)","color":"dark_gray"}
scoreboard players reset @s vd.song
