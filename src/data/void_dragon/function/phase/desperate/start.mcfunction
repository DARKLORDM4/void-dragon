# context: the dragon, the moment it drops to 1/3 health: DESPERATE PHASE
scoreboard players set desperate vd.state 1
tag @s add vd.desperate

# the dragon's boss bar turns into 'Ender Dragon - Desperate'
function void_dragon:phase/name/apply

playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .4
particle dragon_breath ~ ~2.5 ~ 4 2 4 .1 200 force @a[distance=..128]
