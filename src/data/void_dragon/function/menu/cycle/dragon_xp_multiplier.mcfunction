# cycles 'First-kill XP' to its next value
execute if score dragon_xp_multiplier vd.cfg matches 1 run return run scoreboard players set dragon_xp_multiplier vd.cfg 5
execute if score dragon_xp_multiplier vd.cfg matches 5 run return run scoreboard players set dragon_xp_multiplier vd.cfg 20
execute if score dragon_xp_multiplier vd.cfg matches 20 run return run scoreboard players set dragon_xp_multiplier vd.cfg 1
return run scoreboard players set dragon_xp_multiplier vd.cfg 20
