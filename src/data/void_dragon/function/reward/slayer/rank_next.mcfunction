# context: any. Picks the next-highest damage dealer that is not ranked yet, prints the line, then repeats until nobody is left.
scoreboard players set #max vd.dragondmg 0
execute as @a[tag=!vd.ranked] run scoreboard players operation #max vd.dragondmg > @s vd.dragondmg
execute unless score #max vd.dragondmg matches 1.. run return 0
execute as @a[tag=!vd.ranked] if score @s vd.dragondmg = #max vd.dragondmg run tag @s add vd.rank_now
tag @a[tag=vd.rank_now,limit=1] add vd.rank_pick
tag @a[tag=vd.rank_now] remove vd.rank_now
scoreboard players add #rank vd.dragondmg 1
scoreboard players operation #pct vd.dragondmg = #max vd.dragondmg
scoreboard players operation #pct vd.dragondmg *= #h vd.dragondmg
scoreboard players operation #pct vd.dragondmg /= #total vd.dragondmg
execute as @a[tag=vd.rank_pick] run function void_dragon:reward/slayer/rank_line
tag @a[tag=vd.rank_pick] add vd.ranked
tag @a[tag=vd.rank_pick] remove vd.rank_pick
function void_dragon:reward/slayer/rank_next
