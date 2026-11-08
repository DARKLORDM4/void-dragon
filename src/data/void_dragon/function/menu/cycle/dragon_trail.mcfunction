# cycles 'Dragon trail' to its next value
execute if score dragon_trail vd.cfg matches 1 run return run scoreboard players set dragon_trail vd.cfg 0
execute if score dragon_trail vd.cfg matches 0 run return run scoreboard players set dragon_trail vd.cfg 1
return run scoreboard players set dragon_trail vd.cfg 1
