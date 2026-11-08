# context: the dragon. VOID LANCES: spears of void form high above the fighters, mark the ground, then plunge.
execute unless score lance_attack vd.cfg matches 1 run return 0
execute if score @s vd.lance matches 1.. run return 0
scoreboard players set @s vd.lance 1
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 1.3
playsound minecraft:block.amethyst_cluster.break hostile @a[distance=..256] ~ ~ ~ 8 .5
execute if score combo_attacks vd.cfg matches 1.. run function void_dragon:attack/thunder/combo
