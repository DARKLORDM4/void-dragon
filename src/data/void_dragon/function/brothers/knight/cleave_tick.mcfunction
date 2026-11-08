scoreboard players add @s vd.bro2 1
particle soul_fire_flame ~ ~1.3 ~ .5 .7 .5 .02 5 force @a[distance=..64]
particle enchant ~ ~2 ~ .5 .5 .5 1 6 force @a[distance=..64]
execute if score @s vd.bro2 matches 15 if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run tp @s ~ ~ ~ facing entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] feet
execute if score @s vd.bro2 matches 15 at @s run function void_dragon:brothers/knight/cleave_hit
execute if score @s vd.bro2 matches 15.. run tag @s remove vd.bro_cleave
