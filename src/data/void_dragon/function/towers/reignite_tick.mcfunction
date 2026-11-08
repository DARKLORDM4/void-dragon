# context: the dragon, every tick while vd.reignite >= 1
scoreboard players add @s vd.reignite 1

# charge-up (first 30 ticks): dark energy gathers around the dragon
execute if score @s vd.reignite matches 2..30 run particle dragon_breath ~ ~2.5 ~ 3 1.5 3 .05 12 force @a[distance=..160]
execute if score @s vd.reignite matches 2..30 run particle electric_spark ~ ~2.5 ~ 3 1.5 3 .2 8 force @a[distance=..160]
execute if score @s vd.reignite matches 10 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 8 .8
execute if score @s vd.reignite matches 20 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 8 .8
execute if score @s vd.reignite matches 30 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .6

# from tick 30: one crystal every 2 ticks, random order
scoreboard players operation #r vd.reignite = @s vd.reignite
scoreboard players operation #r vd.reignite %= #k2 vd.k
execute if score @s vd.reignite matches 30.. if score #r vd.reignite matches 0 as @e[type=marker,tag=vd.pending,sort=random,limit=1] at @s run function void_dragon:towers/reignite_one

# finished when nothing is left to relight (hard stop after 20 seconds)
execute if score @s vd.reignite matches 32.. unless entity @e[type=marker,tag=vd.pending] run scoreboard players reset @s vd.reignite
execute if score @s vd.reignite matches 400.. run tag @e[type=marker,tag=vd.pending] remove vd.pending
execute if score @s vd.reignite matches 400.. run scoreboard players reset @s vd.reignite
