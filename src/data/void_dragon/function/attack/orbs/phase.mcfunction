# context: the dragon. Orbs leave its mouth at 0.5 s, 1.5 s and 2.5 s (one more in the desperate phase).
scoreboard players add @s vd.orbs 1
execute if score @s vd.orbs matches 10 run function void_dragon:attack/orbs/release
execute if score @s vd.orbs matches 30 run function void_dragon:attack/orbs/release
execute if score @s vd.orbs matches 50 run function void_dragon:attack/orbs/release
execute if score @s vd.orbs matches 70 if entity @s[tag=vd.stage3] run function void_dragon:attack/orbs/release
execute if score @s vd.orbs matches 90.. run scoreboard players reset @s vd.orbs
