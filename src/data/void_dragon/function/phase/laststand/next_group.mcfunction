# context: the dragon. Moves LAST STAND to its next pair of attacks.
scoreboard players add @s vd.lsg 1
scoreboard players set @s vd.lsw 0
execute if score @s vd.lsg matches 5.. run return 0
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .5
execute if score @s vd.lsg matches 1 run function void_dragon:phase/laststand/pair_a
execute if score @s vd.lsg matches 3 run function void_dragon:phase/laststand/pair_a
execute if score @s vd.lsg matches 2 run function void_dragon:phase/laststand/pair_b
execute if score @s vd.lsg matches 4 run function void_dragon:phase/laststand/pair_b
