# context: in the_end at 0 80 0. The brothers appear.
scoreboard players reset bro_intro vd.state
function void_dragon:brothers/heads
execute as @e[type=marker,tag=vd.bro_spawnK] at @s run function void_dragon:brothers/summon_knight with storage void_dragon:storage brothers
execute as @e[type=marker,tag=vd.bro_spawnA] at @s run function void_dragon:brothers/summon_archer with storage void_dragon:storage brothers
execute as @e[tag=vd.brother] run function void_dragon:brothers/power
execute as @e[type=marker,tag=vd.bro_spawnK] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..128]
execute as @e[type=marker,tag=vd.bro_spawnK] at @s run particle portal ~ ~1 ~ 1 1 1 2 300 force @a[distance=..128]
execute as @e[type=marker,tag=vd.bro_spawnA] at @s run particle reverse_portal ~ ~ ~ 2 2 2 .2 300 force @a[distance=..128]
kill @e[type=marker,tag=vd.bro_spawnK]
kill @e[type=marker,tag=vd.bro_spawnA]
team join vd.brothers @e[tag=vd.brother]
execute as @e[type=stray,tag=vd.bro_archer] at @s run summon marker ~ ~ ~ {Tags:["vd.bro_track","vd.bro_trackA"]}
execute as @e[type=wither_skeleton,tag=vd.bro_knight] at @s run summon marker ~ ~ ~ {Tags:["vd.bro_track","vd.bro_trackK"]}
execute as @e[type=phantom,tag=vd.bro_mount] at @s run summon marker ~ ~ ~ {Tags:["vd.bro_track","vd.bro_trackM"]}
scoreboard players reset @e[tag=vd.brother] vd.bro_hp
# remember their gear, so it can drop in perfect condition when they fall (brothers/gear_drop)
data modify storage void_dragon:storage bro_gear.K set from entity @n[type=wither_skeleton,tag=vd.bro_knight] equipment
data modify storage void_dragon:storage bro_gear.A set from entity @n[type=stray,tag=vd.bro_archer] equipment
scoreboard players set bro_phit vd.state 0
tag @a remove vd.bro_fighter

effect give @e[type=stray,tag=vd.bro_archer] speed infinite 2 true
effect give @e[type=wither_skeleton,tag=vd.bro_knight] speed infinite 0 true
effect give @e[type=phantom,tag=vd.bro_mount] speed infinite 2 true
effect give @e[type=stray,tag=vd.bro_archer] glowing infinite 0 true
effect give @e[type=wither_skeleton,tag=vd.bro_knight] glowing infinite 0 true
team join vd.brothers @e[type=ender_dragon]
scoreboard players set bro_spawned vd.state 1
scoreboard players set bro_knight vd.state 1
scoreboard players set bro_archer vd.state 1
scoreboard players set bro_mount vd.state 1
scoreboard players set @e[tag=vd.brother] vd.bro 0
scoreboard players set @e[type=stray,tag=vd.bro_archer] vd.bro 40

bossbar set void_dragon:brothers name [{"text":"⚔ ","color":"dark_purple"},{"text":"The Voidborn Brothers","color":"light_purple","bold":true},{"text":" ⚔","color":"dark_purple"}]
execute store result bossbar void_dragon:brothers max run scoreboard players get bro_max vd.state
execute store result bossbar void_dragon:brothers value run scoreboard players get bro_max vd.state
bossbar set void_dragon:brothers players @a[distance=..180]
bossbar set void_dragon:brothers visible true

title @a[distance=..180] times 10 60 20
title @a[distance=..180] title {"text":"The Brothers","color":"light_purple","bold":true}
title @a[distance=..180] subtitle [{"text":"VEXIS","color":"light_purple"},{"text":" & ","color":"gray"},{"text":"KETHLER","color":"dark_purple"},{"text":" have come for you","color":"gray"}]
tellraw @a[distance=..180] [{"text":"KETHLER: ","color":"dark_purple","bold":true},{"text":"\"Our master bleeds. That ends now.\"","color":"gray","bold":false}]
tellraw @a[distance=..180] [{"text":"VEXIS: ","color":"light_purple","bold":true},{"text":"\"Run if you like, little ones. My arrows are faster.\"","color":"gray","bold":false}]
playsound minecraft:entity.wither.spawn hostile @a[distance=..180] ~ ~ ~ 10 .7
playsound minecraft:entity.enderman.scream hostile @a[distance=..180] ~ ~ ~ 10 .5
playsound minecraft:entity.phantom.ambient hostile @a[distance=..180] ~ ~ ~ 10 .5
