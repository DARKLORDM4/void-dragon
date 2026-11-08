# context: the dragon. Starts the Void Shriek (its own state: vd.act 4200..4579). Only when allowed and nothing blocks it.
execute unless score shriek_attack vd.cfg matches 1 run return 0
execute if score shield_up vd.state matches 1 run return 0
execute if entity @s[tag=vd.engaged] run return 0
scoreboard players set @s vd.act 4200
