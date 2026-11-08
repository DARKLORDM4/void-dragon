# context: the dragon. One meteor on a random solid spot of the island (14, 28, 42 or 56 blocks from the centre)
summon marker 0.5 70 0.5 {Tags:["vd.meteor","vd.meteor_new","vd.meteor_rand"]}
execute as @e[type=marker,tag=vd.meteor_rand] at @s store result entity @s Rotation[0] float 1 run random value 0..359
execute store result score #d vd.tmp run random value 1..4
execute if score #d vd.tmp matches 1 as @e[type=marker,tag=vd.meteor_rand] at @s run tp @s ^ ^ ^14
execute if score #d vd.tmp matches 2 as @e[type=marker,tag=vd.meteor_rand] at @s run tp @s ^ ^ ^28
execute if score #d vd.tmp matches 3 as @e[type=marker,tag=vd.meteor_rand] at @s run tp @s ^ ^ ^42
execute if score #d vd.tmp matches 4 as @e[type=marker,tag=vd.meteor_rand] at @s run tp @s ^ ^ ^56
# drop it onto the ground; if there is no ground (void) the meteor is cancelled
execute as @e[type=marker,tag=vd.meteor_rand] at @s positioned over motion_blocking run tp @s ~ ~ ~
execute as @e[type=marker,tag=vd.meteor_rand] at @s if block ~ ~-1 ~ #void_dragon:passable run kill @s
# never closer than 10 blocks to a player: the random meteors must not stack on top of a player's own meteors
execute as @e[type=marker,tag=vd.meteor_rand] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..10] run kill @s
tag @e[type=marker,tag=vd.meteor_rand] remove vd.meteor_rand
