# ============================================================
#  VOID DRAGON - the dragon's brain (as/at the Ender Dragon, every tick)
# ============================================================
execute if entity @s[tag=!vd.known] run function void_dragon:dragon/setup

# health protection comes first, before anything reads the health
execute if score shield_up vd.state matches 1 run function void_dragon:shield/guard
function void_dragon:dragon/damage_cap

# what is the dragon doing, how hurt is it
function void_dragon:dragon/read
function void_dragon:dragon/vanilla/guard
execute if score dragon_trail vd.cfg matches 1 run function void_dragon:dragon/trail
function void_dragon:reward/slayer/track

# destroyed tower crystals
execute as @e[type=marker,tag=vd.crystalspot,tag=vd.alive] at @s unless entity @e[type=end_crystal,distance=..1.5] run function void_dragon:towers/crystal/destroyed

# dying: start the death animation on this very tick (dying state 9, or no health left)
execute store result score #dh vd.tmp run data get entity @s Health 100
execute if score @s vd.phase matches 9 run function void_dragon:fx/death_start
execute if score #dh vd.tmp matches ..0 run function void_dragon:fx/death_start
# nearly dead: the tracker may now treat a vanished dragon as a dead one
execute if score @s vd.hp matches ..60 run tag @e[type=marker,tag=vd.dtrack] add vd.dlow
# dying: the xp window opens
execute if score @s vd.phase matches 9 run scoreboard players set xp_boost_timer vd.state 300
# (the death animation itself runs from fx/death_track, which also catches deaths the selectors cannot see)

# health milestones: phase II, mini-bosses / shield, desperate, last stand
function void_dragon:dragon/milestones
execute if score desperate vd.state matches 1 run function void_dragon:phase/desperate/tick
execute if score @s vd.reignite matches 1.. run function void_dragon:towers/reignite_tick

# music for everyone near the island
execute if score music_boss vd.cfg matches 1 positioned 0 80 0 as @a[distance=..128] unless score @s vd.song matches 0.. run scoreboard players set @s vd.song 0

# slow jobs
execute if score #half vd.clock matches 1 if score ambience vd.cfg matches 1.. run function void_dragon:fx/crystal_glimmer
execute if score #sec vd.clock matches 1 run function void_dragon:dragon/each_second
execute if score #quarter vd.clock matches 1 positioned 0 65 0 if loaded ~ ~ ~ run function void_dragon:towers/count

# attacks
function void_dragon:attack/director

# a raised shield is applied last so nothing above can lower it
execute if score shield_up vd.state matches 1 run function void_dragon:shield/tick
