# the brothers exist but their logic is off (e.g. an older version wrongly ended the fight): switch it back on
scoreboard players set bro_active vd.state 1
scoreboard players set bro_spawned vd.state 1
scoreboard players set bro_archer vd.state 0
scoreboard players set bro_knight vd.state 0
scoreboard players set bro_mount vd.state 0
execute if entity @e[type=stray,tag=vd.bro_archer] run scoreboard players set bro_archer vd.state 1
execute if entity @e[type=wither_skeleton,tag=vd.bro_knight] run scoreboard players set bro_knight vd.state 1
execute if entity @e[type=phantom,tag=vd.bro_mount] run scoreboard players set bro_mount vd.state 1
execute as @e[type=stray,tag=vd.bro_archer] at @s unless entity @e[type=marker,tag=vd.bro_trackA] run summon marker ~ ~ ~ {Tags:["vd.bro_track","vd.bro_trackA"]}
execute as @e[type=wither_skeleton,tag=vd.bro_knight] at @s unless entity @e[type=marker,tag=vd.bro_trackK] run summon marker ~ ~ ~ {Tags:["vd.bro_track","vd.bro_trackK"]}
execute as @e[type=phantom,tag=vd.bro_mount] at @s unless entity @e[type=marker,tag=vd.bro_trackM] run summon marker ~ ~ ~ {Tags:["vd.bro_track","vd.bro_trackM"]}
team join vd.brothers @e[tag=vd.brother]
bossbar set void_dragon:brothers visible true
execute unless data storage void_dragon:storage bro_gear.K if entity @e[type=wither_skeleton,tag=vd.bro_knight] run data modify storage void_dragon:storage bro_gear.K set from entity @n[type=wither_skeleton,tag=vd.bro_knight] equipment
execute unless data storage void_dragon:storage bro_gear.A if entity @e[type=stray,tag=vd.bro_archer] run data modify storage void_dragon:storage bro_gear.A set from entity @n[type=stray,tag=vd.bro_archer] equipment
