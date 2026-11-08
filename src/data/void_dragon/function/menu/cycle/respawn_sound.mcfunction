# cycles 'Wake-up roar' to its next value
execute if score respawn_sound vd.cfg matches 1 run return run scoreboard players set respawn_sound vd.cfg 0
execute if score respawn_sound vd.cfg matches 0 run return run scoreboard players set respawn_sound vd.cfg 1
return run scoreboard players set respawn_sound vd.cfg 1
