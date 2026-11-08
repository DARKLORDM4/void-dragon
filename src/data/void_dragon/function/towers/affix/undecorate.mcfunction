# context: as an end crystal decorated in an earlier fight (called at fight start)
data remove entity @s CustomName
data modify entity @s CustomNameVisible set value 0b
data modify entity @s Glowing set value 0b
data merge entity @s {Invulnerable:0b}
tag @s remove vd.affixed
tag @s remove vd.shielded
