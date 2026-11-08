# context: the player who landed the killing blow (called from other/kill_dragon).
# Find the highest damage score among online players and grant DRAGON SLAYER to whoever has it.
scoreboard players set #max vd.dragondmg 0
execute as @a run scoreboard players operation #max vd.dragondmg > @s vd.dragondmg
execute if score #max vd.dragondmg matches 1.. as @a if score @s vd.dragondmg = #max vd.dragondmg run tag @s add vd.slayer
execute as @a[tag=vd.slayer] run tellraw @a [{"selector":"@s","color":"light_purple"},{"text":" dealt the most damage in the fight (dragon + brothers): ","color":"gray"},{"score":{"name":"@s","objective":"vd.dragondmg"},"color":"yellow"},{"text":" HP","color":"gray"}]
advancement grant @a[tag=vd.slayer] only void_dragon:dragon_slayer
execute as @a[tag=vd.slayer] run function void_dragon:reward/slayer/trophy
execute as @a[tag=vd.slayer] run function void_dragon:reward/slayer/wings
function void_dragon:reward/slayer/leaderboard
tag @a remove vd.slayer
