# shares #loss (health x100) between this tick's brother hitters, into the damage ranking
execute store result score #hitters vd.tmp if entity @a[tag=vd.hitbro]
execute if score #hitters vd.tmp matches 0 run return 0
scoreboard players add #loss vd.tmp 50
scoreboard players operation #loss vd.tmp /= #k100 vd.k
scoreboard players operation #loss vd.tmp /= #hitters vd.tmp
execute as @a[tag=vd.hitbro] run scoreboard players operation @s vd.dragondmg += #loss vd.tmp
