# context: the dragon crashing down onto the slam spot, faster every tick
execute at @n[type=marker,tag=vd.slam_spot] positioned ~ ~2 ~ if entity @s[distance=..3.5] run return run function void_dragon:attack/slam/impact
execute at @n[type=marker,tag=vd.slam_spot] run tp @n[type=marker,tag=vd.aim] ~ ~ ~
function void_dragon:attack/dive/fly {want:420,acc:35,turn:160}
particle dragon_breath ~ ~1 ~ 1 1 1 .02 10 force @a[distance=..200]
execute if score @s vd.act matches 5275 run function void_dragon:attack/slam/impact
