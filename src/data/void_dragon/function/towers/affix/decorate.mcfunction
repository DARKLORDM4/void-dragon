# context: as/at an end crystal whose tower rolled an affix: floating name (no glow).
tag @s add vd.affixed
execute if entity @e[type=marker,tag=vd.aff_shield,distance=..1.5] run function void_dragon:towers/affix/deco_shield
execute if entity @e[type=marker,tag=vd.aff_explosive,distance=..1.5] run function void_dragon:towers/affix/deco_explosive
execute if entity @e[type=marker,tag=vd.aff_healing,distance=..1.5] run function void_dragon:towers/affix/deco_healing
execute if entity @e[type=marker,tag=vd.aff_cursed,distance=..1.5] run function void_dragon:towers/affix/deco_cursed
execute if entity @e[type=marker,tag=vd.aff_turret,distance=..1.5] run function void_dragon:towers/affix/deco_turret
