# remember which independent attacks were already running
scoreboard players set #before vd.tmp 0
execute if score @s vd.thunder matches 1.. run scoreboard players add #before vd.tmp 1
execute if score @s vd.pull matches 1.. run scoreboard players add #before vd.tmp 1
execute if score @s vd.meteor matches 1.. run scoreboard players add #before vd.tmp 1
execute if score @s vd.vfire matches 1.. run scoreboard players add #before vd.tmp 1
# context: the dragon, once per second while idle. Chances per second at x1: gravity pull 3%, meteor rain 4%, void fireballs 5%
function void_dragon:attack/roll/mult

execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 30
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if score #r vd.tmp <= #k vd.tmp if function void_dragon:attack/room run function void_dragon:attack/gravity/start

execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 40
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if score #r vd.tmp <= #k vd.tmp if function void_dragon:attack/room run function void_dragon:attack/meteor/start

execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 50
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if score #r vd.tmp <= #k vd.tmp if function void_dragon:attack/room run function void_dragon:attack/voidfire/start

scoreboard players set #k vd.tmp 100
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k

# Void Shriek: 4% per second at x1 (raised from 1.5%) (needs: no shield, no Gravity Crash running)
execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 40
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if score #r vd.tmp <= #k vd.tmp unless score @s vd.pull matches 1.. if function void_dragon:attack/room run function void_dragon:attack/shriek/start

# Void Quake slam: 3% per second at x1 (phase II on)
execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 30
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if score #r vd.tmp <= #k vd.tmp if score @s vd.act matches 0 if function void_dragon:attack/room run function void_dragon:attack/slam/start

# desperate: an attack that just started on its own always brings a partner (combo)
scoreboard players set #after vd.tmp 0
execute if score @s vd.thunder matches 1.. run scoreboard players add #after vd.tmp 1
execute if score @s vd.pull matches 1.. run scoreboard players add #after vd.tmp 1
execute if score @s vd.meteor matches 1.. run scoreboard players add #after vd.tmp 1
execute if score @s vd.vfire matches 1.. run scoreboard players add #after vd.tmp 1
execute if score desperate vd.state matches 1 if score #after vd.tmp > #before vd.tmp run function void_dragon:attack/thunder/combo_pick
