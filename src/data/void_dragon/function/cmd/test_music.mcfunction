# plays the boss music for you once, ignoring the settings
stopsound @s * void_dragon:boss_theme
playsound void_dragon:boss_theme master @s ~ ~ ~ 1 1
tellraw @s {"text":"Playing the boss theme on your Master slider.","color":"gray"}
# also switch on music reports, so you see in chat when the fight starts or stops the theme
scoreboard players set music_debug vd.cfg 1
tellraw @s [{"text":"If you heard it, the sound files are fine. ","color":"green"},{"text":"Silence means the theme is missing on your game or that slider is at 0. Music reports are now on: ","color":"red"},{"text":"[turn off]","color":"yellow","click_event":{"action":"run_command","command":"/scoreboard players set music_debug vd.cfg 0"}}]
