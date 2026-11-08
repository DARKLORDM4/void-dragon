# test command: plays the dragon death animation on the living dragon without killing it (about 10 seconds)
execute in the_end positioned 0 64 0 unless entity @e[type=marker,tag=vd.dtrack,distance=..400] run return run tellraw @s {"text":"No dragon here to show the death animation on.","color":"gray"}
execute in the_end positioned 0 64 0 as @e[type=marker,tag=vd.dtrack,tag=!vd.ddying,distance=..400] run function void_dragon:fx/death_begin
tellraw @s {"text":"Playing the death animation (the dragon stays alive).","color":"gray"}
