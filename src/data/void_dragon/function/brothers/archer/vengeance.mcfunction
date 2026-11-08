# context: as/at VEXIS, when KETHLER dies
tag @s add vd.bro_enraged
# he leaps off Nightmaw to avenge his brother on foot (Nightmaw keeps hunting on its own)
execute on vehicle run tellraw @a[distance=..180] [{"text":"VEXIS leaps from Nightmaw!","color":"light_purple","bold":true}]
ride @s dismount
# land on solid ground (never drop into the void)
function void_dragon:brothers/to_ground
scoreboard players set @s vd.bro 40
effect give @s speed infinite 2 true
effect give @s resistance infinite 0 true
particle dust{color:[1.0,0.0,0.2],scale:2.5} ~ ~1 ~ .6 1 .6 0 80 force @a[distance=..96]
playsound minecraft:entity.enderman.scream hostile @a[distance=..96] ~ ~ ~ 4 .5
