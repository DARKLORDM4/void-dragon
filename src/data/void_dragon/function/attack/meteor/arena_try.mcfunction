
scoreboard players add #mtry vd.tmp 1
summon marker 0.5 70 0.5 {Tags:["vd.meteor","vd.meteor_rand"]}
execute as @e[type=marker,tag=vd.meteor_rand] store result entity @s Rotation[0] float 1 run random value 0..359
execute store result storage void_dragon:storage meteor.d int 1 run random value 3..60
execute as @e[type=marker,tag=vd.meteor_rand] at @s run function void_dragon:attack/meteor/arena_move with storage void_dragon:storage meteor
execute as @e[type=marker,tag=vd.meteor_rand] at @s positioned over motion_blocking run tp @s ~ ~ ~
execute as @e[type=marker,tag=vd.meteor_rand] at @s if block ~ ~-1 ~ #void_dragon:passable run kill @s
scoreboard players set #mok vd.tmp 0
execute if entity @e[type=marker,tag=vd.meteor_rand] run scoreboard players set #mok vd.tmp 1
tag @e[type=marker,tag=vd.meteor_rand] remove vd.meteor_rand
execute if score #mok vd.tmp matches 0 if score #mtry vd.tmp matches ..7 run function void_dragon:attack/meteor/arena_try
