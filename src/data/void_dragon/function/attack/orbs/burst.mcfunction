particle reverse_portal ~ ~ ~ .5 .5 .5 .8 80 force @a[distance=..96]
particle dust{color:[0.25,0.0,0.45],scale:3.0} ~ ~ ~ 1 1 1 0 30 force @a[distance=..96]
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..48] ~ ~ ~ 3 .5
playsound minecraft:entity.generic.explode hostile @a[distance=..48] ~ ~ ~ 1 1.8
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2.5] run function void_dragon:attack/orbs/hit
function void_dragon:attack/break_pearls
# two endermites crawl out of the burst
summon endermite ~ ~0.2 ~ {Tags:["vd.orbmite"],PersistenceRequired:0b,Motion:[0.25,0.3,0.0]}
summon endermite ~ ~0.2 ~ {Tags:["vd.orbmite"],PersistenceRequired:0b,Motion:[-0.25,0.3,0.0]}
kill @s[type=marker]
