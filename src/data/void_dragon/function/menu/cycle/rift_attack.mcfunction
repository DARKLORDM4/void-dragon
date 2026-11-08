# cycles 'Rift Tear' to its next value
execute if score rift_attack vd.cfg matches 1 run return run scoreboard players set rift_attack vd.cfg 0
execute if score rift_attack vd.cfg matches 0 run return run scoreboard players set rift_attack vd.cfg 1
return run scoreboard players set rift_attack vd.cfg 1
