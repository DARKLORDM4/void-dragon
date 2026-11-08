# THUNDERSTRIKE: runs on its OWN timer (vd.thunder, 1..200) so it can run together with any other attack.
# It never moves the dragon and never changes vd.act / vd.engaged.
# Called every tick from boss/a_main while vd.thunder >= 1.
scoreboard players add @s vd.thunder 1

# stop in the death cinematic (bosstime 3000..3999) or while the dragon is dying (they DO run in the final phase: Last Stand)
execute if score @s vd.phase matches 9 run scoreboard players reset @s vd.thunder

# --- wind-up (ticks 2..39): roar, crackling energy around the dragon
execute if score @s vd.thunder matches 2 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 .6
execute if score @s vd.thunder matches 2 run playsound minecraft:item.trident.thunder hostile @a[distance=..256] ~ ~ ~ 8 .7
execute if score @s vd.thunder matches 2 run playsound minecraft:block.beacon.activate hostile @a[distance=..256] ~ ~ ~ 8 .5
execute if score @s vd.thunder matches 26 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 1.2
execute if score @s vd.thunder matches 2..39 run particle electric_spark ~ ~2.5 ~ 3 1.5 3 .2 8 force @a[distance=..128]
execute if score @s vd.thunder matches 2..39 run particle dragon_breath ~ ~2.5 ~ 2 1 2 .05 4 force @a[distance=..128]

# --- strike waves: 7 waves, one every 10 ticks (40..100). Waves 1-4: normal warning, waves 5-7: short warning.
execute if score @s vd.thunder matches 40 run function void_dragon:attack/thunder/wave
execute if score @s vd.thunder matches 50 run function void_dragon:attack/thunder/wave
execute if score @s vd.thunder matches 60 run function void_dragon:attack/thunder/wave
execute if score @s vd.thunder matches 70 run function void_dragon:attack/thunder/wave
execute if score @s vd.thunder matches 80 run function void_dragon:attack/thunder/wave_fast
execute if score @s vd.thunder matches 90 run function void_dragon:attack/thunder/wave_fast
execute if score @s vd.thunder matches 100 run function void_dragon:attack/thunder/wave_fast



# --- end (200 ticks)
execute if score @s vd.thunder matches 200.. run scoreboard players reset @s vd.thunder
