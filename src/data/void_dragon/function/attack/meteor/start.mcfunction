# context: the dragon. Starts a meteor rain on its own timer, if allowed and not already running.
execute if score meteor_attack vd.cfg matches 1 if score @s vd.hp matches 101.. if entity @s[tag=vd.stage2] unless score @s vd.meteor matches 1.. run scoreboard players set @s vd.meteor 1
execute if score @s vd.meteor matches 1 run function void_dragon:attack/warn/meteor
