# context: as/at KETHLER. Picks one of his attacks.
scoreboard players set @s vd.bro 0
tag @p[distance=..40,gamemode=!creative,gamemode=!spectator] add vd.bro_tgt
execute store result score #r vd.tmp run random value 1..4

# 1: Ender Step (teleport behind you) - if you are close he cleaves instead
execute if score #r vd.tmp matches 1 unless entity @a[tag=vd.bro_tgt,distance=..6] run function void_dragon:brothers/knight/ender_step
execute if score #r vd.tmp matches 1 if entity @a[tag=vd.bro_tgt,distance=..6] run function void_dragon:brothers/knight/cleave
# 2: Void Slam (leap + shockwave)
execute if score #r vd.tmp matches 2 run function void_dragon:brothers/knight/slam
# 3: Soulfire Cleave - if you are far he steps to you instead
execute if score #r vd.tmp matches 3 if entity @a[tag=vd.bro_tgt,distance=..9] run function void_dragon:brothers/knight/cleave
execute if score #r vd.tmp matches 3 unless entity @a[tag=vd.bro_tgt,distance=..9] run function void_dragon:brothers/knight/ender_step
# 4: Abyssal Pull (yanks everyone nearby toward him)
execute if score #r vd.tmp matches 4 run function void_dragon:brothers/knight/pull

tag @a remove vd.bro_tgt
