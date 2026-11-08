# context: the dragon, Void Shriek charge (bosstime 4241..4360). Part of the epic charge animation.
scoreboard players operation #c vd.tmp = @s vd.act
scoreboard players remove #c vd.tmp 4240
execute if score #c vd.tmp matches 10 run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..256] ~ ~ ~ 10 .6
execute if score #c vd.tmp matches 50 run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..256] ~ ~ ~ 10 .9
execute if score #c vd.tmp matches 90 run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..256] ~ ~ ~ 10 1.3
execute if score #c vd.tmp matches 90 run playsound minecraft:item.trident.thunder hostile @a[distance=..256] ~ ~ ~ 8 .6
execute if score #c vd.tmp matches 105 run playsound minecraft:item.trident.thunder hostile @a[distance=..256] ~ ~ ~ 8 .8
execute if score #c vd.tmp matches 110..120 if predicate void_dragon:odds/50 run playsound minecraft:block.beacon.ambient hostile @a[distance=..256] ~ ~ ~ 8 2
