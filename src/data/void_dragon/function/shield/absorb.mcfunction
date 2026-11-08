
# context: the dragon, it was hit while shielded: health back, a flash of the shield
execute store result entity @s Health float 0.01 run scoreboard players get shield_hp vd.state
particle end_rod ~ ~1.5 ~ 3 2 3 .15 30 force @a[distance=..128]
playsound minecraft:item.shield.block hostile @a[distance=..64] ~ ~ ~ 3 .6
playsound minecraft:block.amethyst_block.hit hostile @a[distance=..64] ~ ~ ~ 3 .5
execute positioned ~ ~ ~ run title @a[distance=..24] actionbar {"text":"The shield absorbs the hit!","color":"aqua","bold":true}
