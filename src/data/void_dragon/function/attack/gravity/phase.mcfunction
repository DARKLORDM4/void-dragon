# GRAVITY CRASH: runs on its OWN timer (vd.pull, 1..130) so it can run together with any other attack.
# It never moves the dragon.
#   2..40    the void gathers above the island (swirling arms, red ring on the ground = crash zone)
#   41..100  the void collapses inward (no pull any more: pure animation)
#   101..111 critical mass: the arms collapse, players are lifted a few blocks
#   112      the CRASH: players drop, a shockwave ring rolls out 55 blocks and hurts everyone it touches
scoreboard players add @s vd.pull 1

# stop in the death cinematic (bosstime 3000..3999) or while the dragon is dying (they DO run in the final phase: Last Stand)
execute if score @s vd.phase matches 9 run scoreboard players reset @s vd.pull
execute unless score @s vd.pull matches 1.. run kill @e[type=marker,tag=vd.crashfx]
execute unless score @s vd.pull matches 1.. run return 0

scoreboard players operation #cr vd.tmp = @s vd.pull
execute if score @s vd.pull matches 2 run function void_dragon:attack/gravity/begin

# --- visuals (spiral arms, core, ground rings, extra animation)
execute if score @s vd.pull matches 2..127 in the_end positioned 0 66 0 run function void_dragon:attack/gravity/anim
execute if score @s vd.pull matches 2..111 as @e[type=marker,tag=vd.crashfx] at @s run function void_dragon:attack/gravity/fx
execute if score @s vd.pull matches 2..111 positioned 0 75 0 run function void_dragon:attack/gravity/core
execute if score @s vd.pull matches 2..111 in the_end positioned 0 66 0 rotated 0 0 run function void_dragon:attack/gravity/rings

# --- sound build-up
execute if score @s vd.pull matches 20 run playsound minecraft:block.beacon.ambient hostile @a[distance=..256] ~ ~ ~ 8 .5
execute if score @s vd.pull matches 41 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 .4
execute if score @s vd.pull matches 41 run playsound minecraft:block.portal.trigger hostile @a[distance=..256] ~ ~ ~ 4 .5
execute if score @s vd.pull matches 50 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 8 .7
execute if score @s vd.pull matches 65 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 8 .9
execute if score @s vd.pull matches 78 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 8 1.1
execute if score @s vd.pull matches 89 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 8 1.3
execute if score @s vd.pull matches 98 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 8 1.6


# --- critical mass: lift everyone near the centre a few blocks (levitation is cut again at tick 111)
execute if score @s vd.pull matches 101 run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..256] ~ ~ ~ 8 1
execute if score @s vd.pull matches 101 run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..256] ~ ~ ~ 8 .5
execute if score @s vd.pull matches 101 in the_end positioned 0 66 0 run effect give @a[gamemode=!creative,gamemode=!spectator,distance=..55] minecraft:levitation 1 12 true
execute if score @s vd.pull matches 111 in the_end positioned 0 80 0 run effect clear @a[distance=..80] minecraft:levitation

# --- the crash
execute if score @s vd.pull matches 112 run function void_dragon:attack/gravity/impact
# shockwave ring: 0 -> 55 blocks over ticks 114..124, then finish
execute if score @s vd.pull matches 114..124 run function void_dragon:attack/gravity/crash_step
execute if score @s vd.pull matches 130.. run function void_dragon:attack/gravity/finish
