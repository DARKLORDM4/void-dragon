# context: as/at a tower marker whose EXPLOSIVE crystal was just destroyed. 10 damage within 8 blocks.
playsound minecraft:entity.generic.explode hostile @a[distance=..96] ~ ~ ~ 5 .8
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..96]
execute unless score dragon_difficulty vd.cfg matches 1.. as @a[gamemode=!creative,gamemode=!spectator,distance=..8] run damage @s 10 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score dragon_difficulty vd.cfg matches 1 as @a[gamemode=!creative,gamemode=!spectator,distance=..8] run damage @s 15 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score dragon_difficulty vd.cfg matches 2.. as @a[gamemode=!creative,gamemode=!spectator,distance=..8] run damage @s 20 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
