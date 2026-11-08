# cycles 'Boss music' to its next value
execute if score music_boss vd.cfg matches 1 run return run scoreboard players set music_boss vd.cfg 0
execute if score music_boss vd.cfg matches 0 run return run scoreboard players set music_boss vd.cfg 1
return run scoreboard players set music_boss vd.cfg 1
