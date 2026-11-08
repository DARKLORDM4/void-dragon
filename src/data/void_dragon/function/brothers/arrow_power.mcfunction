# context: as/at an arrow seen for the first time during the brothers fight.
# Arrows fired by VEXIS (bow, volley, snipe, rain) hit harder on Hard / Very hard brothers damage.
tag @s add vd.bdmg
execute unless score bro_damage vd.cfg matches 1.. run return 0
scoreboard players set #own vd.tmp 0
execute if entity @s[tag=vd.bro_arrow] run scoreboard players set #own vd.tmp 1
execute on origin if entity @s[tag=vd.brother] run scoreboard players set #own vd.tmp 1
execute if score #own vd.tmp matches 0 run return 0
execute if score bro_damage vd.cfg matches 1 store result entity @s damage double 0.0125 run data get entity @s damage 100
execute if score bro_damage vd.cfg matches 2.. store result entity @s damage double 0.015 run data get entity @s damage 100
