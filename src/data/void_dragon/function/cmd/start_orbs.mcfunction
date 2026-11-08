# test command: Abyssal Orbs right now (no combo partner, ignores the on/off setting)
execute as @e[type=ender_dragon] at @s unless score @s vd.orbs matches 1.. run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..256] ~ ~ ~ 6 .5
execute as @e[type=ender_dragon] unless score @s vd.orbs matches 1.. run scoreboard players set @s vd.orbs 1
