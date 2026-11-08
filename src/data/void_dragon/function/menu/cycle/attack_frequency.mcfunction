# cycles 'Attack speed' to its next value
execute if score attack_frequency vd.cfg matches 0 run return run scoreboard players set attack_frequency vd.cfg 1
execute if score attack_frequency vd.cfg matches 1 run return run scoreboard players set attack_frequency vd.cfg 5
execute if score attack_frequency vd.cfg matches 5 run return run scoreboard players set attack_frequency vd.cfg 2
execute if score attack_frequency vd.cfg matches 2 run return run scoreboard players set attack_frequency vd.cfg 3
execute if score attack_frequency vd.cfg matches 3 run return run scoreboard players set attack_frequency vd.cfg 4
execute if score attack_frequency vd.cfg matches 4 run return run scoreboard players set attack_frequency vd.cfg 0
return run scoreboard players set attack_frequency vd.cfg 3
