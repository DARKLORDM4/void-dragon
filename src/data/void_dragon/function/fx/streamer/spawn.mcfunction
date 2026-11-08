# in the End at 0 64 0: releases one void streamer from a random spot of the island (only looks)
execute if score #streamers vd.tmp matches 14.. run return 0
summon marker ~ ~ ~ {Tags:["vd.sdir"]}
execute as @e[type=marker,tag=vd.sdir] store result entity @s Rotation[0] float 1 run random value 0..359
execute store result storage void_dragon:storage fx.d int 1 run random value 6..60
execute as @e[type=marker,tag=vd.sdir] at @s run function void_dragon:fx/streamer/place with storage void_dragon:storage fx
kill @e[type=marker,tag=vd.sdir]
