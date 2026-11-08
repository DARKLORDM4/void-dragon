# context: the dragon. Rolls for the signature attacks (Void Lances, Abyssal Orbs, Rift Tear, Thunderstrike).
function void_dragon:attack/roll/mult

# Void Lances: 5.0% per second
execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 50
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if score #r vd.tmp <= #k vd.tmp if function void_dragon:attack/room run function void_dragon:attack/lances/start

# Abyssal Orbs: 4.0% per second
execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 40
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if entity @s[tag=vd.stage2] if score #r vd.tmp <= #k vd.tmp if function void_dragon:attack/room run function void_dragon:attack/orbs/start

# Thunderstrike: 5.0% per second
execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 50
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if entity @s[tag=vd.stage2] if score thunder_attack vd.cfg matches 1 if score #r vd.tmp <= #k vd.tmp if function void_dragon:attack/room run function void_dragon:attack/thunder/start

# Rift Tear: 6.0% per second
execute store result score #r vd.tmp run random value 1..1000
scoreboard players set #k vd.tmp 60
scoreboard players operation #k vd.tmp *= #mult vd.tmp
execute if score attack_frequency vd.cfg matches 5 run scoreboard players operation #k vd.tmp /= #k2 vd.k
execute if entity @s[tag=vd.stage3] if score #r vd.tmp <= #k vd.tmp if function void_dragon:attack/room run function void_dragon:attack/rift/start
