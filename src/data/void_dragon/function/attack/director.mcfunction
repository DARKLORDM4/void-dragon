# ============================================================
#  attack director (as/at the dragon, every tick)
# ============================================================
scoreboard players set #quiet vd.tmp 0
# while the Voidborn Brothers live the dragon holds back: with both alive 9 of 10 rolls are skipped,
# with one left 3 of 4 (and attack/room keeps it to one attack at a time during their fight)
scoreboard players set #both vd.tmp 0
execute if score bro_active vd.state matches 1 if entity @e[tag=vd.bro_knight] if entity @e[tag=vd.bro_archer] run scoreboard players set #both vd.tmp 1
execute if score #both vd.tmp matches 1 unless predicate void_dragon:odds/10 run scoreboard players set #quiet vd.tmp 1
execute if score #both vd.tmp matches 0 if score bro_active vd.state matches 1 unless predicate void_dragon:odds/25 run scoreboard players set #quiet vd.tmp 1

# once a second, while idle and circling, with a fighter nearby: roll for new attacks
execute if score #sec vd.clock matches 1 if score #quiet vd.tmp matches 0 if score @s vd.act matches 0 if score @s vd.phase matches 0 if entity @s[tag=!vd.engaged] if entity @p[distance=..128,gamemode=!creative,gamemode=!spectator] run function void_dragon:attack/choose

# Tail Sweep: only while perched on the portal
execute if score #sec vd.clock matches 1 if score #quiet vd.tmp matches 0 if score @s vd.phase matches 5..7 unless score @s vd.tail matches -2147483648.. if entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] if predicate void_dragon:odds/33 if function void_dragon:attack/room run scoreboard players set @s vd.tail 1

# running attacks (each keeps its own timer, so several can overlap)
# Void Shriek runs on vd.act (4201 -> 4561), one step per tick
execute if score @s vd.act matches 4200..4579 run scoreboard players add @s vd.act 1
execute if score @s vd.act matches 4200..4579 run function void_dragon:attack/shriek/phase
# safety: an attack state that ran past its end returns the dragon to idle
execute if score @s vd.act matches 4580..4999 run function void_dragon:attack/shriek/abort
# Void Dive (5000..5139) and Void Quake (5200..5339) run on their own clocks too
execute if score @s vd.act matches 5000..5139 run scoreboard players add @s vd.act 1
execute if score @s vd.act matches 5001..5139 run function void_dragon:attack/dive/phase
execute if score @s vd.act matches 5140..5199 run function void_dragon:attack/dive/abort
execute if score @s vd.act matches 5200..5339 run scoreboard players add @s vd.act 1
execute if score @s vd.act matches 5201..5339 run function void_dragon:attack/slam/phase
execute if score @s vd.act matches 5340..5399 run function void_dragon:attack/slam/abort
execute if score @s vd.thunder matches 1.. run function void_dragon:attack/thunder/phase
execute if score @s vd.tail matches -2147483648.. run function void_dragon:attack/tail/tick
execute if score @s vd.pull matches 1.. run function void_dragon:attack/gravity/phase
execute if score @s vd.meteor matches 1.. run function void_dragon:attack/meteor/phase
execute if score @s vd.vfire matches 1.. run function void_dragon:attack/voidfire/phase
execute if score @s vd.lance matches 1.. run function void_dragon:attack/lances/phase
execute if score @s vd.orbs matches 1.. run function void_dragon:attack/orbs/phase
execute if score @s vd.rift matches 1.. run function void_dragon:attack/rift/phase
execute if score @s vd.intro matches 1.. run function void_dragon:phase/intro/tick
execute if score @s vd.lst matches 1.. run function void_dragon:phase/last_stand_tick

# attack names above the hotbar
execute if score #half vd.clock matches 1 run function void_dragon:attack/announce
