# context: the dragon, first tick of a fight.


# --- remember where every ORIGINAL tower crystal is (only crystals standing on bedrock count)
kill @e[type=marker,tag=vd.innerspike]
tag @e[type=marker,tag=vd.pending] remove vd.pending
scoreboard players reset @s vd.reignite
scoreboard players reset @s vd.thunder
scoreboard players reset @s vd.tail
scoreboard players reset @s vd.pull
kill @e[type=marker,tag=vd.crashfx]
tag @a remove vd.crashed
tag @a remove vd.shrieked
scoreboard players reset @s vd.meteor
scoreboard players reset @s vd.wave
scoreboard players reset @s vd.vfire
scoreboard players reset @s vd.phase_prev
kill @e[type=marker,tag=vd.vball]
kill @e[type=marker,tag=vd.pool]
function void_dragon:phase/desperate/clear
function void_dragon:brothers/clear
kill @e[tag=vd.minion]
tag @e[type=marker,tag=vd.crystalspot] remove vd.alive
tag @e[type=marker,tag=vd.tall] remove vd.rolled
execute as @e[type=end_crystal,tag=vd.affixed] run function void_dragon:towers/affix/undecorate
function void_dragon:shield/clear
scoreboard players set xp_first vd.state 0
function void_dragon:phase/name/apply
execute if score intro vd.cfg matches 1 run scoreboard players set @s vd.intro 1
scoreboard players set guards_done vd.state 0
execute positioned 0 65 0 as @e[type=end_crystal,tag=!vd.outercrystal,distance=20..128] at @s if block ~ ~-1 ~ bedrock run summon marker ~ ~ ~ {Tags:["vd.crystalspot","vd.innerspike"]}

# --- outer ring: a tower that exists but lost its crystal gets it back; missing towers get built
execute as @e[type=marker,tag=vd.tall] at @s unless entity @e[type=end_crystal,distance=..1.5] run function void_dragon:towers/restore_quiet
scoreboard players set outer_built vd.state 0
function void_dragon:towers/build_all

# --- the dragon may not destroy blocks during the fight (unless enabled in settings)
execute unless score dragon_block_damage vd.cfg matches 1 run function void_dragon:towers/no_griefing
