# context: the killer (called from boss/slayer/award). Announces EVERY online player who damaged the Ender Dragon, best first.
scoreboard players set #total vd.dragondmg 0
execute as @a run scoreboard players operation #total vd.dragondmg += @s vd.dragondmg
scoreboard players set #h vd.dragondmg 100
scoreboard players set #rank vd.dragondmg 0
execute if score #total vd.dragondmg matches 1.. run tellraw @a {"text":"=== Damage Ranking (dragon + brothers) ===","color":"light_purple","bold":true}
execute if score #total vd.dragondmg matches 1.. run function void_dragon:reward/slayer/rank_next
tag @a remove vd.ranked
tag @a remove vd.rank_now
tag @a remove vd.rank_pick
