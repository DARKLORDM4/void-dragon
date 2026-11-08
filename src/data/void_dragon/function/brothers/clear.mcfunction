# resets everything about the brothers (fight start, dragon death, victory)
scoreboard players set bro_active vd.state 0
scoreboard players set bro_spawned vd.state 0
scoreboard players reset bro_intro vd.state
bossbar set void_dragon:brothers visible false
bossbar set void_dragon:brothers players
kill @e[type=marker,tag=vd.bro_spawnK]
kill @e[type=marker,tag=vd.bro_spawnA]
kill @e[type=marker,tag=vd.bro_rain]
kill @e[type=marker,tag=vd.bro_dir]
execute as @e[tag=vd.brother] run data merge entity @s {DeathLootTable:"minecraft:empty",drop_chances:{head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f,mainhand:0.0f}}
kill @e[tag=vd.brother]
kill @e[type=marker,tag=vd.bro_track]
team leave @e[type=ender_dragon]
kill @e[tag=vd.bro_arrow]
tag @a remove vd.bro_snipet
tag @a remove vd.bro_raint
