# context: the dragon. Starts Void Fireballs on their own timer, if allowed and not already running.
execute if score vfire_attack vd.cfg matches 1 if score @s vd.hp matches 101.. unless score @s vd.vfire matches 1.. run scoreboard players set @s vd.vfire 1
execute if score @s vd.vfire matches 1 run function void_dragon:attack/warn/vfire
