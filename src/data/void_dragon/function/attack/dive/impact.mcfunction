# context: the dragon hits the ground at the dive spot
scoreboard players set @s vd.act 5111
scoreboard players set @s vd.spd 40
scoreboard players set @s vd.hdp -400
execute at @n[type=marker,tag=vd.dive_spot] as @a[distance=..7,gamemode=!creative,gamemode=!spectator] run function void_dragon:attack/dive/hit
execute at @n[type=marker,tag=vd.dive_spot] positioned ~ ~-0.5 ~ run summon armor_stand ~ ~ ~ {Tags:["vd.blast"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"void_dragon:dive_impact":1}}}}}
execute at @n[type=marker,tag=vd.dive_spot] run playsound minecraft:entity.generic.explode hostile @a[distance=..128] ~ ~ ~ 6 .5
execute at @n[type=marker,tag=vd.dive_spot] run playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..128] ~ ~ ~ 6 .6
execute at @n[type=marker,tag=vd.dive_spot] run particle explosion_emitter ~ ~1 ~ 2 .5 2 0 4 force @a[distance=..160]
execute at @n[type=marker,tag=vd.dive_spot] run particle reverse_portal ~ ~0.5 ~ 4 .3 4 .5 300 force @a[distance=..160]
execute at @n[type=marker,tag=vd.dive_spot] positioned ~ ~0.3 ~ run function void_dragon:fx/ring {kind:"void",r:20,dr:9,life:16}
# a shockwave ring rolls out from the crater: jump it
execute at @n[type=marker,tag=vd.dive_spot] run summon marker ~ ~ ~ {Tags:["vd.quake","vd.qnew"]}
scoreboard players set @e[type=marker,tag=vd.qnew] vd.age 0
tag @e[type=marker,tag=vd.qnew] remove vd.qnew
kill @e[type=marker,tag=vd.dive_spot]
