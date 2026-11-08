# context: as a tower marker. Rolls one affix: 40% none, 24% explosive, 12% each of healing / cursed / turret.
tag @s remove vd.aff_shield
tag @s remove vd.aff_explosive
tag @s remove vd.aff_healing
tag @s remove vd.aff_cursed
tag @s remove vd.aff_turret
tag @s add vd.rolled
execute store result score @s vd.affix run random value 1..100
execute if score @s vd.affix matches 41..64 run tag @s add vd.aff_explosive
execute if score @s vd.affix matches 65..76 run tag @s add vd.aff_healing
execute if score @s vd.affix matches 77..88 run tag @s add vd.aff_cursed
execute if score @s vd.affix matches 89..100 run tag @s add vd.aff_turret
