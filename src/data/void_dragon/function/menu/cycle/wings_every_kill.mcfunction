# cycles 'Dragon Wings' to its next value
execute if score wings_every_kill vd.cfg matches 0 run return run scoreboard players set wings_every_kill vd.cfg 1
execute if score wings_every_kill vd.cfg matches 1 run return run scoreboard players set wings_every_kill vd.cfg 0
return run scoreboard players set wings_every_kill vd.cfg 0
