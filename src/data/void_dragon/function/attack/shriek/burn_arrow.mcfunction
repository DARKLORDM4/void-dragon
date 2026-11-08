# context: an arrow that came close to the charging dragon
particle reverse_portal ~ ~ ~ .2 .2 .2 .1 8 force @a[distance=..64]
particle smoke ~ ~ ~ .1 .1 .1 .02 3 force @a[distance=..64]
playsound minecraft:block.fire.extinguish hostile @a[distance=..32] ~ ~ ~ .6 1.6
kill @s[type=#minecraft:arrows]
