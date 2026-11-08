# context: the dragon, once per second (tower_affixes = 1)
execute as @e[type=marker,tag=vd.tall,tag=!vd.rolled] run function void_dragon:towers/affix/roll_one
execute as @e[type=marker,tag=vd.tall,tag=vd.rolled] at @s as @e[type=end_crystal,distance=..1.5,tag=!vd.affixed] run function void_dragon:towers/affix/decorate
execute as @e[type=marker,tag=vd.aff_shield] at @s unless entity @e[type=shulker,tag=vd.shieldguard,distance=..6] as @e[type=end_crystal,tag=vd.shielded,distance=..1.5] run function void_dragon:towers/affix/unshield

# healing crystals: each living one heals the dragon 1% of its max health per second
execute store result score #h vd.tmp if entity @e[type=marker,tag=vd.aff_healing,tag=vd.alive]
execute if score #h vd.tmp matches 1.. run scoreboard players operation #heal vd.tmp = @s vd.health_max
execute if score #h vd.tmp matches 1.. run scoreboard players operation #heal vd.tmp /= #k100 vd.k
execute if score #h vd.tmp matches 1.. if score #heal vd.tmp matches ..0 run scoreboard players set #heal vd.tmp 1
execute if score #h vd.tmp matches 1.. run scoreboard players operation #heal vd.tmp *= #h vd.tmp
execute if score #h vd.tmp matches 1.. run function void_dragon:dragon/heal
execute as @e[type=marker,tag=vd.aff_healing,tag=vd.alive] at @s run particle dust_color_transition{from_color:[0.2,1.0,0.3],scale:1.4,to_color:[0.8,1.0,0.8]} ~ ~2 ~ .3 1 .3 0 8 force @a[distance=..96]
