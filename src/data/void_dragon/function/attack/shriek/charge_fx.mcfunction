# context: the dragon (at the dragon). c = charge tick 1..120
scoreboard players operation #c vd.tmp = @s vd.act
scoreboard players remove #c vd.tmp 4240

# spinning spiral arms (four, then the void collapses in on the dragon)
execute rotated as @s rotated ~ 0 run function void_dragon:attack/shriek/arms

# energy flowing in from everywhere (grows in 3 stages)
execute if score #c vd.tmp matches 1..39 run particle reverse_portal ~ ~ ~ 10 6 10 .6 15 force @a[distance=..200]
execute if score #c vd.tmp matches 40..79 run particle reverse_portal ~ ~ ~ 10 6 10 .7 35 force @a[distance=..200]
execute if score #c vd.tmp matches 80..120 run particle reverse_portal ~ ~ ~ 12 8 12 .9 70 force @a[distance=..200]
execute if score #c vd.tmp matches 40..120 run particle dragon_breath ~ ~1 ~ 6 3 6 .05 20 force @a[distance=..200]
execute if score #c vd.tmp matches 60..120 run particle electric_spark ~ ~ ~ 9 5 9 .3 20 force @a[distance=..200]
execute if score #c vd.tmp matches 60..120 run particle dust{color:[0.75,0.3,1.0],scale:3} 0 82 0 0.8 14 0.8 0 10 force @a[distance=..200]
execute if score #c vd.tmp matches 100..120 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..200]
execute if score #c vd.tmp matches 100..120 run particle end_rod ~ ~ ~ 1 1 1 .6 25 force @a[distance=..200]

# the heartbeat speeds up, the scream builds
execute if score #c vd.tmp matches 1 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 12 .5 .6
execute if score #c vd.tmp matches 1 run playsound minecraft:block.beacon.activate hostile @a[distance=..256] ~ ~ ~ 10 .5 .6
execute if score #c vd.tmp matches 1 run title @a[distance=..256] times 5 50 10
execute if score #c vd.tmp matches 1 run title @a[distance=..256] subtitle {"text":"The dragon gathers the void...","color":"dark_purple"}
execute if score #c vd.tmp matches 1 run title @a[distance=..256] title {"text":""}
execute if score #c vd.tmp matches 20 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 .7 .6
execute if score #c vd.tmp matches 40 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 .8 .6
execute if score #c vd.tmp matches 40 run playsound minecraft:block.beacon.ambient hostile @a[distance=..256] ~ ~ ~ 10 .6 .6
execute if score #c vd.tmp matches 60 run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..256] ~ ~ ~ 12 .7 .6
execute if score #c vd.tmp matches 60 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 1 .6
execute if score #c vd.tmp matches 70 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 1 .6
execute if score #c vd.tmp matches 80 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 1.1 .6
execute if score #c vd.tmp matches 90 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 12 .4 .6
execute if score #c vd.tmp matches 90 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 1.3 .6
execute if score #c vd.tmp matches 100 run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..256] ~ ~ ~ 12 1.1 .6
execute if score #c vd.tmp matches 100 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 1.5 .6
execute if score #c vd.tmp matches 106 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 1.7 .6
execute if score #c vd.tmp matches 112 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 1.9 .6
execute if score #c vd.tmp matches 117 run playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] ~ ~ ~ 10 2 .6

# charge bar in the action bar (one box per second)

execute if score #c vd.tmp matches 1 run title @a[distance=..256] actionbar [{"text":"Void Shriek ","color":"light_purple","bold":true},{"text":"\u25a0","color":"dark_purple"},{"text":"\u25a1\u25a1\u25a1\u25a1\u25a1","color":"gray"}]
execute if score #c vd.tmp matches 21 run title @a[distance=..256] actionbar [{"text":"Void Shriek ","color":"light_purple","bold":true},{"text":"\u25a0\u25a0","color":"dark_purple"},{"text":"\u25a1\u25a1\u25a1\u25a1","color":"gray"}]
execute if score #c vd.tmp matches 41 run title @a[distance=..256] actionbar [{"text":"Void Shriek ","color":"light_purple","bold":true},{"text":"\u25a0\u25a0\u25a0","color":"dark_purple"},{"text":"\u25a1\u25a1\u25a1","color":"gray"}]
execute if score #c vd.tmp matches 61 run title @a[distance=..256] actionbar [{"text":"Void Shriek ","color":"light_purple","bold":true},{"text":"\u25a0\u25a0\u25a0\u25a0","color":"dark_purple"},{"text":"\u25a1\u25a1","color":"gray"}]
execute if score #c vd.tmp matches 81 run title @a[distance=..256] actionbar [{"text":"Void Shriek ","color":"light_purple","bold":true},{"text":"\u25a0\u25a0\u25a0\u25a0\u25a0","color":"dark_purple"},{"text":"\u25a1","color":"gray"}]
execute if score #c vd.tmp matches 101 run title @a[distance=..256] actionbar [{"text":"Void Shriek ","color":"light_purple","bold":true},{"text":"\u25a0\u25a0\u25a0\u25a0\u25a0\u25a0","color":"dark_purple"},{"text":"","color":"gray"}]
