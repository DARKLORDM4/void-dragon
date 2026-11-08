# test command: always gives the wings, regardless of the setting
scoreboard players set #keep vd.tmp 0
execute if score wings_given vd.state matches 1 run scoreboard players set #keep vd.tmp 1
scoreboard players reset wings_given vd.state
function void_dragon:reward/slayer/wings
execute if score #keep vd.tmp matches 1 run scoreboard players set wings_given vd.state 1
