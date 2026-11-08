# context: as/at the tracker marker where he died
kill @s[type=marker]
function void_dragon:brothers/gear_drop {who:"K"}
# his drops (head, gear, loot) glow purple so they are easy to find
function void_dragon:brothers/glow_drops
# 7,000 xp
summon experience_orb ~ ~0.5 ~ {Value:1000,Tags:["vd.xp","vd.scattered"],Glowing:1b}
summon experience_orb ~1 ~0.5 ~ {Value:1000,Tags:["vd.xp","vd.scattered"],Glowing:1b}
summon experience_orb ~-1 ~0.5 ~ {Value:1000,Tags:["vd.xp","vd.scattered"],Glowing:1b}
summon experience_orb ~ ~0.5 ~1 {Value:1000,Tags:["vd.xp","vd.scattered"],Glowing:1b}
summon experience_orb ~ ~0.5 ~-1 {Value:1000,Tags:["vd.xp","vd.scattered"],Glowing:1b}
summon experience_orb ~0.7 ~0.5 ~0.7 {Value:1000,Tags:["vd.xp","vd.scattered"],Glowing:1b}
summon experience_orb ~-0.7 ~0.5 ~-0.7 {Value:1000,Tags:["vd.xp","vd.scattered"],Glowing:1b}
team join vd.loot @e[type=experience_orb,tag=vd.xp,distance=..3]
particle reverse_portal ~ ~1 ~ .6 1 .6 .3 120 force @a[distance=..96]
scoreboard players set bro_knight vd.state 0
tellraw @a[distance=..180] [{"text":"☠ ","color":"dark_purple"},{"text":"KETHLER, the Ender Knight","color":"dark_purple","bold":true},{"text":" has fallen!","color":"gray"}]
execute if entity @e[type=stray,tag=vd.bro_archer] run tellraw @a[distance=..180] [{"text":"VEXIS: ","color":"light_purple","bold":true},{"text":"\"You took him from me... I will bury you in arrows!\"","color":"red","bold":false}]
execute as @e[type=stray,tag=vd.bro_archer] at @s run function void_dragon:brothers/archer/vengeance
bossbar set void_dragon:brothers name [{"text":"⚔ ","color":"light_purple"},{"text":"VEXIS, the Void Hunter","color":"light_purple","bold":true},{"text":" - Vengeful","color":"red"}]
# the killing blow counts toward the damage ranking too, and everyone who fought him earns Brothers in Darkness
scoreboard players operation #loss vd.tmp = #lastK vd.state
function void_dragon:brothers/credit_share
scoreboard players set #lastK vd.state 0
advancement grant @a[tag=vd.bro_fighter] only void_dragon:brothers_in_darkness
