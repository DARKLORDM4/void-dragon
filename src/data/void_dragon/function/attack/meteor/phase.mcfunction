# METEOR RAIN: runs on its OWN timer (vd.meteor, 1..300) so it can run together with any other attack.
# 10 meteors on random spots anywhere on the island, one new warning ring every 10 ticks (5 seconds);
# each fireball falls 30 ticks after its ring appears.
scoreboard players add @s vd.meteor 1

execute if score @s vd.phase matches 9 run scoreboard players reset @s vd.meteor

execute if score @s vd.meteor matches 2 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 .7
execute if score @s vd.meteor matches 2..39 run particle dust_color_transition{from_color:[1.0,0.5,0.1],scale:2,to_color:[1.0,0.0,0.0]} ~ ~2.5 ~ 3 1.5 3 0 10 force @a[distance=..128]

# --- 10 meteors: ticks 40, 50, ... 130
execute if score @s vd.meteor matches 40 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 50 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 60 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 70 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 80 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 90 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 100 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 110 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 120 run function void_dragon:attack/meteor/arena_spot
execute if score @s vd.meteor matches 130 run function void_dragon:attack/meteor/arena_spot

# --- end (180 ticks)
execute if score @s vd.meteor matches 180.. run scoreboard players reset @s vd.meteor
