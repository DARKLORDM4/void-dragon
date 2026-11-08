# cycles 'Block damage' to its next value
execute if score dragon_block_damage vd.cfg matches 0 run return run scoreboard players set dragon_block_damage vd.cfg 1
execute if score dragon_block_damage vd.cfg matches 1 run return run scoreboard players set dragon_block_damage vd.cfg 0
return run scoreboard players set dragon_block_damage vd.cfg 0
