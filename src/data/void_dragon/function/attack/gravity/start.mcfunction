# context: the dragon. Starts a Gravity Crash on its own timer, if allowed and not already running.
execute if score pull_attack vd.cfg matches 1 if score @s vd.hp matches 101.. if entity @s[tag=vd.stage2] unless score @s vd.pull matches 1.. run scoreboard players set @s vd.pull 1
execute if score @s vd.pull matches 1 run function void_dragon:attack/warn/pull
