# sets #mult from the Attack Frequency level: 0=x1 1=x2 5=x2.5 2=x3 3=x5 4=x10 (x2.5 = x5 then halved by the caller)
scoreboard players set #mult vd.tmp 1
execute if score attack_frequency vd.cfg matches 1 run scoreboard players set #mult vd.tmp 2
execute if score attack_frequency vd.cfg matches 2 run scoreboard players set #mult vd.tmp 3
execute if score attack_frequency vd.cfg matches 3 run scoreboard players set #mult vd.tmp 5
execute if score attack_frequency vd.cfg matches 4 run scoreboard players set #mult vd.tmp 10
execute if score attack_frequency vd.cfg matches 5 run scoreboard players set #mult vd.tmp 5
