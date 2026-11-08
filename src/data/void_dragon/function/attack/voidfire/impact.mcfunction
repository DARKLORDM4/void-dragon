# context: as/at the projectile at the moment it hits. 8 damage in 3.5 blocks (x1 / x1.5 / x2 by difficulty, x3 desperate).
tag @s add vd.vdead
playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=..96] ~ ~ ~ 4 1
particle explosion ~ ~ ~ 1 1 1 0 4 force @a[distance=..96]
particle dragon_breath ~ ~ ~ 1.5 .5 1.5 .08 40 force @a[distance=..96]
execute unless score dragon_difficulty vd.cfg matches 1.. as @a[gamemode=!creative,gamemode=!spectator,distance=..3.5] run damage @s 8 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score dragon_difficulty vd.cfg matches 1 as @a[gamemode=!creative,gamemode=!spectator,distance=..3.5] run damage @s 12 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score dragon_difficulty vd.cfg matches 2.. as @a[gamemode=!creative,gamemode=!spectator,distance=..3.5] run damage @s 16 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
# leaves a lingering breath pool on the ground below
execute positioned over motion_blocking run function void_dragon:attack/voidfire/pool/summon
kill @s[type=marker]
