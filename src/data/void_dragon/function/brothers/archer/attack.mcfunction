# context: as/at VEXIS. Picks one of his attacks.
scoreboard players set @s vd.bro 0
tag @r[distance=..48,gamemode=!creative,gamemode=!spectator] add vd.bro_tgt
scoreboard players set #m vd.tmp 0
execute on vehicle if entity @s[type=phantom] run scoreboard players set #m vd.tmp 1
execute store result score #r vd.tmp run random value 1..4

# 1: Void Volley (3 fans of 5 arrows)
execute if score #r vd.tmp matches 1 run function void_dragon:brothers/archer/volley
# 2: Starfall (arrow rain on a marked spot)
execute if score #r vd.tmp matches 2 run function void_dragon:brothers/archer/rain_start
# 3: Nightmaw's Screech while mounted / Void Step once grounded
execute if score #r vd.tmp matches 3 if score #m vd.tmp matches 1 on vehicle at @s run function void_dragon:brothers/archer/screech
execute if score #r vd.tmp matches 3 if score #m vd.tmp matches 0 run function void_dragon:brothers/archer/void_step
# 4: Ender Snipe (1.5 s aim, then one piercing spectral arrow)
execute if score #r vd.tmp matches 4 run function void_dragon:brothers/archer/snipe

tag @a remove vd.bro_tgt
