# context: the dragon, every tick. The game's own attacks cannot be edited, so they are made rare:
# when the dragon ENTERS strafe (1), landing approach (2) or charge (8) while the mod is idle, it is sent back to
# normal circling unless a roll of 1..100 is <= vanilla_attacks (percent, default 3).
scoreboard players set #sup vd.tmp 0
execute unless score @s vd.phase_prev = @s vd.phase if entity @s[tag=!vd.engaged] if score @s vd.act matches 0 if score @s vd.phase matches 1 run scoreboard players set #sup vd.tmp 1
execute unless score @s vd.phase_prev = @s vd.phase if entity @s[tag=!vd.engaged] if score @s vd.act matches 0 if score @s vd.phase matches 2 run scoreboard players set #sup vd.tmp 1
execute unless score @s vd.phase_prev = @s vd.phase if entity @s[tag=!vd.engaged] if score @s vd.act matches 0 if score @s vd.phase matches 8 run scoreboard players set #sup vd.tmp 1
execute if score #sup vd.tmp matches 1 store result score #r vd.tmp run random value 1..100
execute if score #sup vd.tmp matches 1 if score #r vd.tmp > vanilla_attacks vd.cfg run function void_dragon:dragon/vanilla/suppress
scoreboard players operation @s vd.phase_prev = @s vd.phase
