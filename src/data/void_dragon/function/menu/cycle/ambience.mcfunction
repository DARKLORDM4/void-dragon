# cycles 'Atmosphere' to its next value
execute if score ambience vd.cfg matches 1 run return run scoreboard players set ambience vd.cfg 2
execute if score ambience vd.cfg matches 2 run return run scoreboard players set ambience vd.cfg 0
execute if score ambience vd.cfg matches 0 run return run scoreboard players set ambience vd.cfg 1
return run scoreboard players set ambience vd.cfg 1
