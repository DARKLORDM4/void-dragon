# a fast meteor on the nearest player within 24 blocks
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..24] at @s run summon marker ~ ~ ~ {Tags:["vd.meteor","vd.meteor_fast"]}
