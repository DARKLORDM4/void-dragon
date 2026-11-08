# test command: forces the thunderstrike attack right now (skips the health / stage checks)
execute as @e[type=ender_dragon] unless score @s vd.thunder matches 1.. run scoreboard players set @s vd.thunder 1
execute as @e[type=ender_dragon] if score @s vd.thunder matches 1 run function void_dragon:attack/warn/thunder
tellraw @s {"text":"Thunderstrike forced on every dragon.","color":"gray"}
