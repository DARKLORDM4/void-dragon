# context: the dragon. ABYSSAL ORBS: slow orbs of void that hunt the closest fighter. Shoot them with an arrow to pop them.
execute unless score orb_attack vd.cfg matches 1 run return 0
execute if score @s vd.orbs matches 1.. run return 0
scoreboard players set @s vd.orbs 1
playsound minecraft:entity.ender_dragon.ambient hostile @a[distance=..256] ~ ~ ~ 8 .5
playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..256] ~ ~ ~ 6 .5
execute if score combo_attacks vd.cfg matches 1.. run function void_dragon:attack/thunder/combo
