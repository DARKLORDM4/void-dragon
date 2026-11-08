# context: a brother or Nightmaw, every tick. Health lost without a player hit (the dragon, its attacks, falling, their own arrows)
# comes back. A mace hit never counts: the health comes back and he blinks away.
execute store result score #now vd.tmp run data get entity @s Health 100
scoreboard players set #undo vd.tmp 0
execute if score @s vd.bro_hp matches 1.. if score #now vd.tmp < @s vd.bro_hp unless score bro_phit vd.state matches 1 unless score @s vd.bro_near matches 1.. run scoreboard players set #undo vd.tmp 1
execute if score @s vd.bro_hp matches 1.. if score #now vd.tmp < @s vd.bro_hp if score bro_mace vd.state matches 1 run scoreboard players set #undo vd.tmp 2
execute if score #undo vd.tmp matches 1.. if score #now vd.tmp matches 1.. store result entity @s Health float 0.01 run scoreboard players get @s vd.bro_hp
execute if score #undo vd.tmp matches 2 if score #now vd.tmp matches 1.. unless entity @s[type=phantom] run function void_dragon:brothers/dodge
# real player damage counts toward the dragon fight damage ranking (DRAGON SLAYER)
execute if score #undo vd.tmp matches 0 if score @s vd.bro_hp matches 1.. if score #now vd.tmp < @s vd.bro_hp run function void_dragon:brothers/credit
execute store result score @s vd.bro_hp run data get entity @s Health 100
execute if entity @s[tag=vd.bro_knight] run scoreboard players operation #lastK vd.state = @s vd.bro_hp
execute if entity @s[tag=vd.bro_archer] run scoreboard players operation #lastA vd.state = @s vd.bro_hp

execute if score @s vd.bro_near matches 1.. run scoreboard players remove @s vd.bro_near 1
