# cycles 'Brothers damage' to its next value
execute if score bro_damage vd.cfg matches 0 run return run scoreboard players set bro_damage vd.cfg 1
execute if score bro_damage vd.cfg matches 1 run return run scoreboard players set bro_damage vd.cfg 2
execute if score bro_damage vd.cfg matches 2 run return run scoreboard players set bro_damage vd.cfg 0
return run scoreboard players set bro_damage vd.cfg 0
