# context: the dragon, every tick.
# How much total health (health + extra health) did the dragon lose since last tick?
# That loss is credited to the player(s) who hit it during that tick (shared if several).
execute unless score @s vd.health_prev matches -2147483648.. run scoreboard players operation @s vd.health_prev = @s vd.health

scoreboard players operation #drop vd.dragondmg = @s vd.health_prev
scoreboard players operation #drop vd.dragondmg -= @s vd.health
# a dragon above 1024 health loses shrunk real health: scale it back up to true damage
execute if score #drop vd.dragondmg matches 1.. if score @s vd.true_hp matches 1025.. run function void_dragon:reward/slayer/unscale
execute store result score #hitters vd.dragondmg if entity @a[tag=vd.hitdragon]

execute if score #drop vd.dragondmg matches 1.. if score #hitters vd.dragondmg matches 1.. run scoreboard players operation #drop vd.dragondmg /= #hitters vd.dragondmg
execute if score #drop vd.dragondmg matches 1.. if score #hitters vd.dragondmg matches 1.. as @a[tag=vd.hitdragon] run scoreboard players operation @s vd.dragondmg += #drop vd.dragondmg

tag @a remove vd.hitdragon
scoreboard players operation @s vd.health_prev = @s vd.health
