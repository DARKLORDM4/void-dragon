# ============================================================
#  VOID DRAGON - runs every game tick
# ============================================================

# --- clocks: #sec / #half / #quarter / #even / #minute are 1 on the first tick of each cycle
scoreboard players add #ticks vd.clock 1
scoreboard players operation #sec vd.clock = #ticks vd.clock
scoreboard players set #n vd.tmp 20
scoreboard players operation #sec vd.clock %= #n vd.tmp
scoreboard players add #sec vd.clock 1
scoreboard players operation #half vd.clock = #ticks vd.clock
scoreboard players operation #half vd.clock %= #k10 vd.k
scoreboard players add #half vd.clock 1
scoreboard players operation #quarter vd.clock = #ticks vd.clock
scoreboard players set #n vd.tmp 5
scoreboard players operation #quarter vd.clock %= #n vd.tmp
scoreboard players add #quarter vd.clock 1
scoreboard players operation #even vd.clock = #ticks vd.clock
scoreboard players operation #even vd.clock %= #k2 vd.k
scoreboard players add #even vd.clock 1
scoreboard players operation #minute vd.clock = #ticks vd.clock
scoreboard players set #n vd.tmp 1200
scoreboard players operation #minute vd.clock %= #n vd.tmp
scoreboard players add #minute vd.clock 1

# --- one-tick helper stands (knockback blasts) are cleared before anything else runs
kill @e[type=armor_stand,tag=vd.blast]

# --- arriving in the End: 10 s of protection
execute as @a[tag=!vd.inend] if predicate void_dragon:where/in_end at @s run function void_dragon:dragon/arrival_grace
execute as @a[tag=vd.inend] unless predicate void_dragon:where/in_end run tag @s remove vd.inend

# --- the dragon
execute as @e[type=ender_dragon] if data entity @s DragonPhase at @s run function void_dragon:dragon/brain

# --- the Voidborn Brothers
execute unless score bro_active vd.state matches 1 in the_end positioned 0 80 0 if entity @e[tag=vd.brother,distance=..512,limit=1] run function void_dragon:brothers/recover
execute if score bro_active vd.state matches 1 in the_end positioned 0 80 0 run function void_dragon:brothers/tick

# --- projectiles and markers that live on their own
execute as @e[type=marker,tag=vd.meteor] at @s run function void_dragon:attack/meteor/marker
execute as @e[type=marker,tag=vd.vball] at @s run function void_dragon:attack/voidfire/tick
execute as @e[type=marker,tag=vd.pool] at @s run function void_dragon:attack/voidfire/pool/tick
execute as @e[type=marker,tag=vd.thunder] at @s run function void_dragon:attack/thunder/marker
execute as @e[type=marker,tag=vd.lance] at @s run function void_dragon:attack/lances/marker
execute as @e[type=marker,tag=vd.orb] at @s run function void_dragon:attack/orbs/marker
execute as @e[type=marker,tag=vd.rift] at @s run function void_dragon:attack/rift/marker

# --- animations: rings, dragon respawn ritual
execute as @e[type=marker,tag=vd.fx] at @s run function void_dragon:fx/tick
execute as @e[type=marker,tag=vd.streamer] at @s run function void_dragon:fx/streamer/tick
execute in the_end positioned 0 64 0 if entity @e[type=end_crystal,distance=..12,nbt={ShowBottom:0b}] if data entity @e[type=end_crystal,distance=..12,limit=1,nbt={ShowBottom:0b}] beam_target run function void_dragon:fx/respawn/tick
execute if score respawn_t vd.state matches 1.. in the_end positioned 0 64 0 unless data entity @e[type=end_crystal,distance=..12,limit=1,nbt={ShowBottom:0b}] beam_target run function void_dragon:fx/respawn/finish

execute as @a[scores={vd.arrive=1..}] at @s run function void_dragon:fx/arrival

execute if score portal_glow vd.state matches 1.. in the_end positioned 0 64 0 run function void_dragon:fx/portal_glow

# --- rewards
execute if score xp_boost_timer vd.state matches 1.. run function void_dragon:reward/xp/tick

# --- boss music (per player)
execute as @a[scores={vd.song=0..}] at @s run function void_dragon:music/player

# --- atmosphere
execute if score ambience vd.cfg matches 1.. if score #half vd.clock matches 1 in the_end positioned 0 80 0 if entity @a[distance=..160] run function void_dragon:atmosphere/pulse
# safety: with no dragon left in any loaded world, nobody should still see the shield or brothers bars
execute if score #sec vd.clock matches 1 unless entity @e[type=ender_dragon] run function void_dragon:fx/hide_bars
# KETHLER's strikes never leave Wither behind
execute as @a[tag=vd.unwither] at @s if dimension minecraft:the_end run effect clear @s minecraft:wither
tag @a remove vd.unwither
# Void Quake rings rolling across the island
execute as @e[type=marker,tag=vd.quake] at @s run function void_dragon:attack/slam/wave
scoreboard players remove @a[scores={vd.qcd=1..}] vd.qcd 1
# phantoms of the fight that keep bumping into a pillar (swoop, hit the obsidian, turn, swoop again) get freed
execute if score #sec vd.clock matches 1 as @e[type=phantom,tag=vd.minion,tag=!vd.bro_mount] at @s run function void_dragon:minions/unstick
# dragon death animation: a tracker follows the dragon and plays the collapse when it dies (any way it dies)
execute in the_end positioned 0 64 0 if entity @a[distance=..400] run function void_dragon:fx/death_track
