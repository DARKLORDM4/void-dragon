# context: as/at one experience orb that has not been boosted yet
tag @s add vd.xp

# value of the orb (and how many orbs it stands for, if the game merged them)
scoreboard players set #c vd.tmp 1
execute store result score #c vd.tmp run data get entity @s Count
execute if score #c vd.tmp matches ..0 run scoreboard players set #c vd.tmp 1
scoreboard players set #v vd.tmp 0
execute store result score #v vd.tmp run data get entity @s Value
execute if score #v vd.tmp matches 1.. run function void_dragon:reward/xp/calc
