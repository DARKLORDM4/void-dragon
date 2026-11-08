# context: as/at a targeted player. 1 meteor right on the player + 5 more 8 blocks away in random directions
summon marker ~ ~ ~ {Tags:["vd.meteor","vd.meteor_new"]}
summon marker ~ ~ ~ {Tags:["vd.meteor","vd.meteor_new","vd.meteor_scatter"]}
summon marker ~ ~ ~ {Tags:["vd.meteor","vd.meteor_new","vd.meteor_scatter"]}
summon marker ~ ~ ~ {Tags:["vd.meteor","vd.meteor_new","vd.meteor_scatter"]}
summon marker ~ ~ ~ {Tags:["vd.meteor","vd.meteor_new","vd.meteor_scatter"]}
summon marker ~ ~ ~ {Tags:["vd.meteor","vd.meteor_new","vd.meteor_scatter"]}
execute as @e[type=marker,tag=vd.meteor_scatter] at @s store result entity @s Rotation[0] float 1 run random value 0..359
execute as @e[type=marker,tag=vd.meteor_scatter] at @s run tp @s ^ ^ ^8
tag @e[type=marker,tag=vd.meteor_scatter] remove vd.meteor_scatter
