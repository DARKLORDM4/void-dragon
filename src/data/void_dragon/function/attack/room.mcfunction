# context: the dragon. Asked before any attack starts on its own; succeeds only if there is room for one more.
#  - while the Voidborn Brothers fight: one dragon attack at a time
#  - otherwise: at most 2 attacks running together
#  - desperate: a 3rd one may join, but only 1 time in 5
scoreboard players set #run vd.tmp 0
execute if score @s vd.thunder matches 1.. run scoreboard players add #run vd.tmp 1
execute if score @s vd.pull matches 1.. run scoreboard players add #run vd.tmp 1
execute if score @s vd.meteor matches 1.. run scoreboard players add #run vd.tmp 1
execute if score @s vd.vfire matches 1.. run scoreboard players add #run vd.tmp 1
execute if score @s vd.lance matches 1.. run scoreboard players add #run vd.tmp 1
execute if score @s vd.orbs matches 1.. run scoreboard players add #run vd.tmp 1
execute if score @s vd.rift matches 1.. run scoreboard players add #run vd.tmp 1
execute if score @s vd.act matches 4200..4579 run scoreboard players add #run vd.tmp 1
execute if score @s vd.act matches 5000..5399 run scoreboard players add #run vd.tmp 1
execute if score @s vd.tail matches -2147483648.. run scoreboard players add #run vd.tmp 1
# during LAST STAND the timed pairs own the sky: no extra attacks join them
execute if score @s vd.lsg matches 1..4 run return 0
execute if score bro_active vd.state matches 1 if score #run vd.tmp matches 1.. run return 0
execute if score #run vd.tmp matches ..1 run return 1
execute if score #run vd.tmp matches 2 if score desperate vd.state matches 1 if predicate void_dragon:odds/20 run return 1
return 0
