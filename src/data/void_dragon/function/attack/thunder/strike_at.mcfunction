# context: a thunder marker, the moment lightning lands, positioned on the highest block above it.
# The bolt always strikes (on the player and the spots near them), but it lands on the HIGHEST block of that spot.
# Anyone with blocks above their head is sheltered: no damage, no slowness, and the bolt's own zap/fire cannot reach them.
execute as @a[distance=..10] at @s positioned over motion_blocking positioned ~ ~-0.5 ~ unless entity @s[dy=400] run tag @s add vd.roofed
effect give @a[tag=vd.roofed,distance=..10] resistance 1 4 true
effect give @a[tag=vd.roofed,distance=..10] fire_resistance 2 0 true
summon lightning_bolt ~ ~ ~

playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..128] ~ ~ ~ 8 .8
playsound minecraft:entity.lightning_bolt.impact hostile @a[distance=..128] ~ ~ ~ 8 1
playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 4 1.4

function void_dragon:towers/flash
particle electric_spark ~ ~1 ~ 1.5 2 1.5 .6 80 force @a[distance=..128]
particle explosion ~ ~1 ~ 1.5 .3 1.5 0 6 force @a[distance=..128]
particle end_rod ~ ~ ~ 0 0 0 .7 40 force @a[distance=..128]

# damage: lethal core (<2 blocks) and outer zone (<4.5 blocks). Ignores shields and invulnerability frames.
execute unless score dragon_difficulty vd.cfg matches 1.. as @a[tag=!vd.roofed,gamemode=!creative,gamemode=!spectator,distance=..2] run damage @s 13 void_dragon:void_crush by @e[sort=nearest,limit=1,type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 as @a[tag=!vd.roofed,gamemode=!creative,gamemode=!spectator,distance=..2] run damage @s 19.5 void_dragon:void_crush by @e[sort=nearest,limit=1,type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. as @a[tag=!vd.roofed,gamemode=!creative,gamemode=!spectator,distance=..2] run damage @s 26 void_dragon:void_crush by @e[sort=nearest,limit=1,type=ender_dragon]
execute unless score dragon_difficulty vd.cfg matches 1.. as @a[tag=!vd.roofed,gamemode=!creative,gamemode=!spectator,distance=2..4.5] run damage @s 9 void_dragon:void_crush by @e[sort=nearest,limit=1,type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 1 as @a[tag=!vd.roofed,gamemode=!creative,gamemode=!spectator,distance=2..4.5] run damage @s 13.5 void_dragon:void_crush by @e[sort=nearest,limit=1,type=ender_dragon]
execute if score dragon_difficulty vd.cfg matches 2.. as @a[tag=!vd.roofed,gamemode=!creative,gamemode=!spectator,distance=2..4.5] run damage @s 18 void_dragon:void_crush by @e[sort=nearest,limit=1,type=ender_dragon]
effect give @a[tag=!vd.roofed,gamemode=!creative,gamemode=!spectator,distance=..4.5] slowness 3 1 true


tag @a remove vd.roofed
function void_dragon:attack/break_pearls
