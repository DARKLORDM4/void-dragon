ride @e[tag=vd.bro_rider,limit=1] dismount
tp @e[tag=vd.bro_self,limit=1] ~ ~ ~
tp @e[tag=vd.bro_rider,limit=1] ~ ~ ~
ride @e[tag=vd.bro_rider,limit=1] mount @e[tag=vd.bro_self,limit=1]
particle reverse_portal ~ ~ ~ 1 1 1 .3 80 force @a[distance=..64]
scoreboard players set #ok vd.tmp 1
