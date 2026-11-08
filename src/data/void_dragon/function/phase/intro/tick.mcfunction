# context: the dragon, every tick while vd.intro >= 1 (set at fight start). ~2 seconds. Attacks are held back by the inattack tag.
scoreboard players add @s vd.intro 1
execute if score @s vd.intro matches 4 run tag @s add vd.engaged
execute if score @s vd.intro matches 4 run title @a[distance=..256] times 10 50 10
execute if score @s vd.intro matches 4 run title @a[distance=..256] subtitle {"text":"The Ender Dragon awakens","color":"light_purple"}
execute if score @s vd.intro matches 4 run title @a[distance=..256] title {"text":""}
execute if score @s vd.intro matches 4 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .6

# attacks may start again
execute if score @s vd.intro matches 45.. run tag @s remove vd.engaged
execute if score @s vd.intro matches 45.. run scoreboard players reset @s vd.intro
