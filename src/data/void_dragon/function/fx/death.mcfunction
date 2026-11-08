# context: the death tracker, every tick while the dragon dies (about 10 s). RETURN TO THE VOID:
# the island lets go of its light, thin streams of it spiral up into the dragon, a quiet halo closes
# around it, and when it is gone one soft wave of void rolls out over the island.
scoreboard players add @s vd.death 1
scoreboard players operation #f vd.tmp = @s vd.death
scoreboard players set #n vd.tmp 3
scoreboard players operation #f vd.tmp %= #n vd.tmp
scoreboard players operation #g vd.tmp = @s vd.death
scoreboard players set #n vd.tmp 20
scoreboard players operation #g vd.tmp %= #n vd.tmp

execute if score @s vd.death matches 1 run particle flash{color:[0.75,0.35,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1 force @a[distance=..300]
execute if score @s vd.death matches 1 run particle reverse_portal ~ ~1 ~ 3 2 3 0.6 200 force @a[distance=..300]
execute if score @s vd.death matches 1 run playsound minecraft:block.amethyst_block.resonate hostile @a[distance=..300] ~ ~ ~ 4 .5
execute if score @s vd.death matches 1 run playsound minecraft:block.beacon.deactivate hostile @a[distance=..300] ~ ~ ~ 3 .5
execute if score @s vd.death matches 1 run title @a[distance=..300] actionbar {text:"the void is calling it home...",color:"light_purple",italic:true}

# the island's light rises to meet it: from the ground, and from every tower
execute if score @s vd.death matches 1..165 if score #f vd.tmp matches 0 in the_end positioned 0 64 0 run function void_dragon:fx/death_mote_spawn
execute if score @s vd.death matches 2..160 if score #g vd.tmp matches 2 as @e[type=marker,tag=vd.crystalspot,distance=..220] at @s positioned ~ ~1 ~ run function void_dragon:fx/death_mote_make
execute as @e[type=marker,tag=vd.dmote] at @s run function void_dragon:fx/death_mote

# a slow halo that tightens around the body while it fades
scoreboard players operation #va vd.tmp = @s vd.death
scoreboard players operation #va vd.tmp *= #k2 vd.k
execute store result storage void_dragon:storage dth.a int 3 run scoreboard players get #va vd.tmp
scoreboard players operation #r vd.tmp = @s vd.death
scoreboard players operation #r vd.tmp /= #k3 vd.k
scoreboard players set #rr vd.tmp 95
scoreboard players operation #rr vd.tmp -= #r vd.tmp
execute store result storage void_dragon:storage dth.r double 0.1 run scoreboard players get #rr vd.tmp
execute if score @s vd.death matches 1..185 run function void_dragon:fx/death_halo with storage void_dragon:storage dth

# the body slowly comes apart into breath and light
execute if score @s vd.death matches ..185 run particle dragon_breath ~ ~1 ~ 2.5 1.5 2.5 0.01 3 force @a[distance=..200]
execute if score @s vd.death matches 60..185 run particle end_rod ~ ~1 ~ 2 1.2 2 0.02 1 force @a[distance=..200]

# a rising chord instead of thunder
execute if score @s vd.death matches 45 run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..300] ~ ~ ~ 4 .6
execute if score @s vd.death matches 85 run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..300] ~ ~ ~ 4 .75
execute if score @s vd.death matches 125 run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..300] ~ ~ ~ 4 .9
execute if score @s vd.death matches 160 run playsound minecraft:block.amethyst_block.resonate hostile @a[distance=..300] ~ ~ ~ 5 1.0

# one last breath in, then rest
execute if score @s vd.death matches 175..188 run particle reverse_portal ~ ~1 ~ 4 3 4 0.5 18 force @a[distance=..200]
execute if score @s vd.death matches 190 run function void_dragon:fx/death_rest
