# context: as/at KETHLER. A blast behind every player throws them toward him, then he gets a quick follow-up attack.
tag @s add vd.bro_self
execute as @a[distance=2.5..14,gamemode=!creative,gamemode=!spectator] at @s facing entity @e[tag=vd.bro_self,limit=1] feet positioned ^ ^1.1 ^-1.2 run summon armor_stand ~ ~ ~ {Tags:["vd.blast"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"void_dragon:void_pull":1}}}}}
effect give @a[distance=..14,gamemode=!creative,gamemode=!spectator] slowness 2 1
title @a[distance=..14,gamemode=!creative,gamemode=!spectator] actionbar {"text":"Abyssal Pull!","color":"dark_purple","bold":true}
tag @s remove vd.bro_self
playsound minecraft:entity.enderman.scream hostile @a[distance=..48] ~ ~ ~ 2 .5
playsound minecraft:entity.wind_charge.wind_burst hostile @a[distance=..48] ~ ~ ~ 2 .6
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a[distance=..64]
scoreboard players set @s vd.bro 35
