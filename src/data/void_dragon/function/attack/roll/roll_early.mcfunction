function void_dragon:attack/roll/mult
execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 50
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if score #r vd.tmp <= #k vd.tmp if function void_dragon:attack/room run function void_dragon:attack/voidfire/start

# Void Dive: 1.2% per second at x1, and never again within 40 seconds of the last one
execute if score #divecd vd.state matches 1.. run scoreboard players remove #divecd vd.state 1
execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 12
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if score #r vd.tmp <= #k vd.tmp if score @s vd.act matches 0 unless score #divecd vd.state matches 1.. if function void_dragon:attack/room run function void_dragon:attack/dive/start
