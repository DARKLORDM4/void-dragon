# cycles 'Phantom waves' to its next value
execute if score minions vd.cfg matches 1 run return run scoreboard players set minions vd.cfg 0
execute if score minions vd.cfg matches 0 run return run scoreboard players set minions vd.cfg 1
return run scoreboard players set minions vd.cfg 1
