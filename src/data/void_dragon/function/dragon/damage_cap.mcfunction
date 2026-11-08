# context: the dragon, every tick (right after the shield guard). No single hit can take more than the
# "Damage cap per hit" setting (dmg_cap, 0 = off): if the dragon lost more since last tick, the extra comes back.
execute store result score #ch vd.tmp run data get entity @s Health 100
execute unless score @s vd.cap matches -2147483648.. run scoreboard players operation @s vd.cap = #ch vd.tmp
scoreboard players operation #loss vd.tmp = @s vd.cap
scoreboard players operation #loss vd.tmp -= #ch vd.tmp
scoreboard players operation #capv vd.tmp = dmg_cap vd.cfg
scoreboard players operation #capv vd.tmp *= #k100 vd.k
execute if score dmg_cap vd.cfg matches 1.. if score #loss vd.tmp > #capv vd.tmp if score #ch vd.tmp matches 1.. run function void_dragon:dragon/cap_hit
# a dragon above 1024 health: shrink what is left of the hit (vd.cap still holds last tick's health here)
execute if score @s vd.true_hp matches 1025.. run function void_dragon:dragon/scale_hit
execute store result score @s vd.cap run data get entity @s Health 100
