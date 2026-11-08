# cycles 'Normal dragon attacks' to its next value
execute if score vanilla_attacks vd.cfg matches 3 run return run scoreboard players set vanilla_attacks vd.cfg 100
execute if score vanilla_attacks vd.cfg matches 100 run return run scoreboard players set vanilla_attacks vd.cfg 3
return run scoreboard players set vanilla_attacks vd.cfg 3
