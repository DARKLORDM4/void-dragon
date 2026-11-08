# first pair: Thunderstrike + Gravity Crash
execute if score thunder_attack vd.cfg matches 1 unless score @s vd.thunder matches 1.. run scoreboard players set @s vd.thunder 1
execute if score pull_attack vd.cfg matches 1 unless score @s vd.pull matches 1.. run scoreboard players set @s vd.pull 1
