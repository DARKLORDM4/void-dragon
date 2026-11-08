# context: as/at the projectile. Hit a player (within 1.6) or a block -> impact; otherwise draw the trail and advance 0.4.
execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.6] run function void_dragon:attack/voidfire/impact
execute unless entity @s[tag=vd.vdead] unless block ~ ~ ~ #void_dragon:passable run function void_dragon:attack/voidfire/impact
execute unless entity @s[tag=vd.vdead] run particle dust_color_transition{from_color:[0.75,0.25,1.0],scale:1.6,to_color:[0.35,0.0,0.7]} ~ ~ ~ 0 0 0 0 2 force @a[distance=..96]
execute unless entity @s[tag=vd.vdead] run particle dragon_breath ~ ~ ~ .1 .1 .1 .01 1 force @a[distance=..96]
execute unless entity @s[tag=vd.vdead] run tp @s ^ ^ ^0.4
