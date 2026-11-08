# context: the dragon reaches 1/3 health: desperate. The original towers' crystals come back behind a shield.
tag @s add vd.stage3
function void_dragon:towers/reignite
function void_dragon:phase/desperate/start
execute if score crystal_shield vd.cfg matches 1 run function void_dragon:shield/start_desperate
execute if function void_dragon:attack/room run function void_dragon:attack/rift/start
# shockwave across the island
execute in the_end positioned 0 64.3 0 run function void_dragon:fx/ring {kind:"blood",r:20,dr:20,life:40}
