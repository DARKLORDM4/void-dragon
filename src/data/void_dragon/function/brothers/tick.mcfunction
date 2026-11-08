# context: in the_end at 0 80 0, every tick while bro_active = 1
execute if score bro_intro vd.state matches 1.. run function void_dragon:brothers/intro
execute unless score bro_spawned vd.state matches 1 run return 0

# MACE DODGE: a player falling at them with a mace (smash, also attribute swapping) makes them blink away
scoreboard players set @a vd.fd 0
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..200] if items entity @s hotbar.* minecraft:mace at @s run function void_dragon:brothers/mace_check

# player projectiles: tag them once; a brother near one in the last 3 ticks may take damage from it
execute as @e[type=#minecraft:arrows,tag=!vd.bro_arrow,tag=!vd.pchk] run function void_dragon:brothers/tag_projectile
execute as @e[type=#minecraft:arrows,tag=!vd.bdmg] at @s run function void_dragon:brothers/arrow_power
execute as @e[type=trident,tag=!vd.pchk] run function void_dragon:brothers/tag_projectile
execute as @e[tag=vd.brother] at @s if entity @e[tag=vd.parrow,distance=..6] run scoreboard players set @s vd.bro_near 3
execute as @e[type=stray,tag=vd.bro_archer] at @s run function void_dragon:brothers/archer/tick
execute as @e[type=wither_skeleton,tag=vd.bro_knight] at @s run function void_dragon:brothers/knight/tick
execute as @e[type=phantom,tag=vd.bro_mount] at @s run function void_dragon:brothers/mount_tick
execute as @e[type=marker,tag=vd.bro_rain] at @s run function void_dragon:brothers/archer/rain_tick

# shared boss bar = VEXIS + KETHLER health
execute store result score #ha vd.tmp run data get entity @n[type=stray,tag=vd.bro_archer] Health
execute store result score #hk vd.tmp run data get entity @n[type=wither_skeleton,tag=vd.bro_knight] Health
scoreboard players operation #ha vd.tmp += #hk vd.tmp
execute store result bossbar void_dragon:brothers value run scoreboard players get #ha vd.tmp
execute if score #sec vd.clock matches 1 run bossbar set void_dragon:brothers players @a[distance=..180]
# the dragon is on their team: they never target it, even when it hits them
execute if score #sec vd.clock matches 1 run team join vd.brothers @e[type=ender_dragon]


# only players can hurt the brothers: a player hit counts for this tick
scoreboard players set bro_phit vd.state 0
scoreboard players set bro_mace vd.state 0

# who fell? Each brother drags a tracker marker along. If the tracker is loaded but its brother is gone, he died
# (when the area unloads, e.g. a player died and respawned, both unload together, so nothing is reported).
execute as @e[type=marker,tag=vd.bro_trackM] at @s unless entity @e[type=phantom,tag=vd.bro_mount] run function void_dragon:brothers/fallen_mount
execute as @e[type=marker,tag=vd.bro_trackA] at @s unless entity @e[type=stray,tag=vd.bro_archer] run function void_dragon:brothers/fallen_archer
execute as @e[type=marker,tag=vd.bro_trackK] at @s unless entity @e[type=wither_skeleton,tag=vd.bro_knight] run function void_dragon:brothers/fallen_knight
execute if score bro_archer vd.state matches 0 if score bro_knight vd.state matches 0 run function void_dragon:brothers/victory

# leftover arrows from the brothers vanish after a while
execute as @e[tag=vd.bro_arrow] run scoreboard players add @s vd.bro 1
kill @e[tag=vd.bro_arrow,scores={vd.bro=200..}]
# the brothers never shoot each other: their arrows and Nightmaw's bullets vanish when they are about to hit an ally
execute as @e[type=#minecraft:arrows] at @s if entity @e[tag=vd.bro_knight,distance=..2.6] unless entity @a[distance=..2,gamemode=!spectator] if function void_dragon:brothers/ally_shot run function void_dragon:brothers/fizzle
execute as @e[type=shulker_bullet,tag=vd.bro_bullet] at @s if entity @e[tag=vd.bro_knight,distance=..2.2] unless entity @a[distance=..2,gamemode=!spectator] run function void_dragon:brothers/fizzle
tag @a remove vd.hitbro
