# context: as/at a ring marker, every tick
scoreboard players add @s vd.fxa 1
scoreboard players operation @s vd.fxr += @s vd.fxd
execute if score @s vd.fxa >= @s vd.fxl run return run kill @s[type=marker]
execute if score @s vd.fxr matches ..0 run return run kill @s[type=marker]
execute store result storage void_dragon:storage fx.r double 0.1 run scoreboard players get @s vd.fxr
execute if entity @s[tag=vd.fx_void] run function void_dragon:fx/draw_void with storage void_dragon:storage fx
execute if entity @s[tag=vd.fx_star] run function void_dragon:fx/draw_star with storage void_dragon:storage fx
execute if entity @s[tag=vd.fx_blood] run function void_dragon:fx/draw_blood with storage void_dragon:storage fx
