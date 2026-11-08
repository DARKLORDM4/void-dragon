
# context: the dragon. Height, AI phase, and health in thousandths of its maximum (1000 = full health).
execute store result score @s vd.y run data get entity @s Pos[1] 1
execute store result score @s vd.phase run data get entity @s DragonPhase 1
execute store result score @s vd.health run data get entity @s Health 1
scoreboard players operation @s vd.hp = @s vd.health
scoreboard players operation @s vd.hp *= #k1000 vd.k
scoreboard players operation @s vd.hp /= @s vd.health_max
