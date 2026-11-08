# second pair: Meteor Rain + Void Fire
execute if score meteor_attack vd.cfg matches 1 unless score @s vd.meteor matches 1.. run scoreboard players set @s vd.meteor 1
execute if score vfire_attack vd.cfg matches 1 unless score @s vd.vfire matches 1.. run scoreboard players set @s vd.vfire 1
