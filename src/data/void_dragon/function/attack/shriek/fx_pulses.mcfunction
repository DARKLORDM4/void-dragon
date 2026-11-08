# context: the dragon, Void Shriek charge (bosstime 4241..4360). Part of the epic charge animation.
scoreboard players operation #c vd.tmp = @s vd.act
scoreboard players remove #c vd.tmp 4240
execute if score #c vd.tmp matches 12 run function void_dragon:attack/shriek/pulse
execute if score #c vd.tmp matches 30 run function void_dragon:attack/shriek/pulse
execute if score #c vd.tmp matches 48 run function void_dragon:attack/shriek/pulse
execute if score #c vd.tmp matches 66 run function void_dragon:attack/shriek/pulse
execute if score #c vd.tmp matches 84 run function void_dragon:attack/shriek/pulse
execute if score #c vd.tmp matches 98 run function void_dragon:attack/shriek/pulse
execute if score #c vd.tmp matches 108 run function void_dragon:attack/shriek/pulse
execute if score #c vd.tmp matches 115 run function void_dragon:attack/shriek/pulse
