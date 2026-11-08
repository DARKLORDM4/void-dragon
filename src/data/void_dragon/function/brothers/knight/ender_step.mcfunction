# context: as/at KETHLER. Teleports right behind the target (only onto solid ground).
particle portal ~ ~1 ~ .4 1 .4 1.5 80 force @a[distance=..64]
playsound minecraft:entity.enderman.teleport hostile @a[distance=..48] ~ ~ ~ 2 .6
tag @s add vd.bro_self
execute as @a[tag=vd.bro_tgt,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-2.5 if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable unless block ~ ~-1 ~ #void_dragon:passable run tp @e[tag=vd.bro_self,limit=1] ~ ~ ~ facing entity @s eyes
execute unless entity @a[tag=vd.bro_tgt,distance=..4] as @a[tag=vd.bro_tgt,limit=1] at @s rotated ~ 0 positioned ^ ^ ^2.5 if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable unless block ~ ~-1 ~ #void_dragon:passable run tp @e[tag=vd.bro_self,limit=1] ~ ~ ~ facing entity @s eyes
tag @s remove vd.bro_self
execute at @s run particle reverse_portal ~ ~1 ~ .4 1 .4 .3 80 force @a[distance=..64]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..48] ~ ~ ~ 2 .9
execute if entity @a[tag=vd.bro_tgt,distance=..4] run title @a[tag=vd.bro_tgt] actionbar {"text":"☠ KETHLER steps out of the void behind you!","color":"dark_purple","bold":true}
execute if entity @a[tag=vd.bro_tgt,distance=..4] run effect give @a[tag=vd.bro_tgt] slowness 2 2
execute if entity @a[tag=vd.bro_tgt,distance=..4] run scoreboard players set @s vd.bro 45
