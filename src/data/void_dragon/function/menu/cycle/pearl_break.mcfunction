# cycles 'Pearls break' to its next value
execute if score pearl_break vd.cfg matches 1 run return run scoreboard players set pearl_break vd.cfg 0
execute if score pearl_break vd.cfg matches 0 run return run scoreboard players set pearl_break vd.cfg 1
return run scoreboard players set pearl_break vd.cfg 1
