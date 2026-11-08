# laser sight from VEXIS to the target, one particle per block
particle dust{color:[1.0,0.1,0.4],scale:0.6} ^ ^ ^ 0 0 0 0 1 force @a[distance=..96]
scoreboard players add #i vd.tmp 1
execute if score #i vd.tmp matches ..60 positioned ^ ^ ^1 unless entity @a[tag=vd.bro_snipet,distance=..1] run function void_dragon:brothers/archer/snipe_line
