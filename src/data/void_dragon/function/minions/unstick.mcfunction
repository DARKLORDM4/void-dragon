# context: as/at a fight phantom, once a second. Phantoms swooping at a player behind a pillar can grind
# against the obsidian forever. If it stayed within ~2 blocks for 3 seconds next to solid blocks, lift it free.
execute store result score #x vd.tmp run data get entity @s Pos[0]
execute store result score #y vd.tmp run data get entity @s Pos[1]
execute store result score #z vd.tmp run data get entity @s Pos[2]
scoreboard players operation #dx vd.tmp = #x vd.tmp
scoreboard players operation #dx vd.tmp -= @s vd.px
scoreboard players operation #dy vd.tmp = #y vd.tmp
scoreboard players operation #dy vd.tmp -= @s vd.py
scoreboard players operation #dz vd.tmp = #z vd.tmp
scoreboard players operation #dz vd.tmp -= @s vd.pz
scoreboard players operation @s vd.px = #x vd.tmp
scoreboard players operation @s vd.py = #y vd.tmp
scoreboard players operation @s vd.pz = #z vd.tmp
scoreboard players set #still vd.tmp 0
execute if score #dx vd.tmp matches -2..2 if score #dy vd.tmp matches -2..2 if score #dz vd.tmp matches -2..2 run scoreboard players set #still vd.tmp 1
execute if score #still vd.tmp matches 0 run return run scoreboard players set @s vd.stuck 0
execute unless function void_dragon:minions/near_wall run return run scoreboard players set @s vd.stuck 0
scoreboard players add @s vd.stuck 1
execute if score @s vd.stuck matches 3.. run function void_dragon:minions/free
