# context: as a targeted player (position: Nightmaw)
summon shulker_bullet ~ ~-1 ~ {Tags:["vd.bro_bullet"],Steps:2}
data modify entity @n[type=shulker_bullet,tag=vd.bro_bullet] Target set from entity @s UUID
data modify entity @n[type=shulker_bullet,tag=vd.bro_bullet] Owner set from entity @n[type=phantom,tag=vd.bro_mount] UUID
tag @n[type=shulker_bullet,tag=vd.bro_bullet] remove vd.bro_bullet
