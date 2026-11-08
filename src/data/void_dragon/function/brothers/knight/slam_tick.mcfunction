scoreboard players add @s vd.bro2 1
particle dust{color:[0.5,0.0,0.8],scale:2.0} ~ ~ ~ .3 .3 .3 0 4 force @a[distance=..64]
execute if score @s vd.bro2 matches 6.. unless block ~ ~-0.2 ~ #void_dragon:passable run function void_dragon:brothers/knight/slam_impact
execute if score @s vd.bro2 matches 80.. run function void_dragon:brothers/knight/slam_impact
