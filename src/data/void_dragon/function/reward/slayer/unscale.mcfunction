# #drop (real health lost by a dragon above 1024) -> the true damage dealt
scoreboard players operation #drop vd.dragondmg *= @s vd.true_hp
scoreboard players operation #drop vd.dragondmg /= #k1024 vd.k
