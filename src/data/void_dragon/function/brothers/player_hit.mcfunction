# context: a player who just damaged a stray / wither skeleton / phantom (advancement reward)
advancement revoke @s only void_dragon:hit_brother
scoreboard players set bro_phit vd.state 1
# this player counts for the damage ranking this tick, and for Brothers in Darkness
tag @s add vd.hitbro
tag @s add vd.bro_fighter
# mace hit: mace in the main hand, or a mace on the hotbar while falling (attribute swapping) -> the hit does not count
execute if items entity @s weapon.mainhand minecraft:mace run scoreboard players set bro_mace vd.state 1
execute if score @s vd.fd matches 15.. if items entity @s hotbar.* minecraft:mace run scoreboard players set bro_mace vd.state 1
