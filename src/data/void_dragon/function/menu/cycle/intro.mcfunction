# cycles 'Intro title' to its next value
execute if score intro vd.cfg matches 1 run return run scoreboard players set intro vd.cfg 0
execute if score intro vd.cfg matches 0 run return run scoreboard players set intro vd.cfg 1
return run scoreboard players set intro vd.cfg 1
