# context: as/at Nightmaw's tracker marker
kill @s[type=marker]
scoreboard players set bro_mount vd.state 0
tellraw @a[distance=..180] [{"text":"☠ ","color":"dark_gray"},{"text":"Nightmaw","color":"dark_gray","bold":true},{"text":" has fallen!","color":"gray"}]
execute as @e[type=stray,tag=vd.bro_archer] run effect give @s speed infinite 2 true
execute as @e[type=stray,tag=vd.bro_archer] at @s run playsound minecraft:entity.phantom.death hostile @a[distance=..96] ~ ~ ~ 4 .5
