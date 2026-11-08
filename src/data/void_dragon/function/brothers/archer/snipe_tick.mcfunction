# context: as/at VEXIS while aiming
scoreboard players add @s vd.bro2 1
execute unless entity @a[tag=vd.bro_snipet,distance=..64] run return run function void_dragon:brothers/archer/snipe_end
scoreboard players set #i vd.tmp 0
execute if score @s vd.bro2 matches ..29 anchored eyes positioned ^ ^ ^ facing entity @a[tag=vd.bro_snipet,limit=1] eyes run function void_dragon:brothers/archer/snipe_line
execute if score @s vd.bro2 matches 15 run playsound minecraft:item.crossbow.loading_middle hostile @a[distance=..64] ~ ~ ~ 3 .5
execute if score @s vd.bro2 matches 30 anchored eyes positioned ^ ^ ^ facing entity @a[tag=vd.bro_snipet,limit=1] eyes run function void_dragon:brothers/archer/snipe_fire
execute if score @s vd.bro2 matches 30.. run function void_dragon:brothers/archer/snipe_end
