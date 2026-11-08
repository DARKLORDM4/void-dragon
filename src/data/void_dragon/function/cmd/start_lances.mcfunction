# test command: Void Lances right now (no combo partner, ignores the on/off setting)
execute as @e[type=ender_dragon] at @s unless score @s vd.lance matches 1.. run playsound minecraft:block.amethyst_cluster.break hostile @a[distance=..256] ~ ~ ~ 8 .5
execute as @e[type=ender_dragon] unless score @s vd.lance matches 1.. run scoreboard players set @s vd.lance 1
