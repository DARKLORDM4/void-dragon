# macro: dragon_music_slider = which volume slider plays it
stopsound @s * void_dragon:boss_theme
$playsound void_dragon:boss_theme $(dragon_music_slider) @s ~ ~ ~ 1 1
$execute if score music_debug vd.cfg matches 1 run tellraw @s [{"text":"♪ Void Dragon theme started on the ","color":"dark_gray"},{"text":"$(dragon_music_slider)","color":"gray"},{"text":" slider","color":"dark_gray"}]
