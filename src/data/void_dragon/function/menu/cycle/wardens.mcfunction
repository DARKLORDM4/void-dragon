# cycles 'Cage Wardens' to its next value
execute if score wardens vd.cfg matches 1 run return run scoreboard players set wardens vd.cfg 0
execute if score wardens vd.cfg matches 0 run return run scoreboard players set wardens vd.cfg 1
return run scoreboard players set wardens vd.cfg 1
