# cycles 'Combos' to its next value
execute if score combo_attacks vd.cfg matches 0 run return run scoreboard players set combo_attacks vd.cfg 50
execute if score combo_attacks vd.cfg matches 50 run return run scoreboard players set combo_attacks vd.cfg 100
execute if score combo_attacks vd.cfg matches 100 run return run scoreboard players set combo_attacks vd.cfg 0
return run scoreboard players set combo_attacks vd.cfg 100
