# context: the dragon. Starts a thunderstrike on its own timer, if allowed and not already running.
execute if score thunder_attack vd.cfg matches 1 if score @s vd.hp matches 101.. if entity @s[tag=vd.stage2] unless score @s vd.thunder matches 1.. run scoreboard players set @s vd.thunder 1
execute if score @s vd.thunder matches 1 run function void_dragon:attack/warn/thunder
