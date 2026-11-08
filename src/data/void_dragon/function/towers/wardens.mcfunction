# context: the dragon, once a second. Every caged crystal (iron bars around it) gets one Cage Warden phantom that
# guards the cage and keeps circling back to it.
execute as @e[type=marker,tag=vd.crystalspot,tag=!vd.warded] at @s if entity @e[type=end_crystal,distance=..1.5] run function void_dragon:towers/warden_check
# a warden that strays more than 24 blocks gets its circling point set back over its cage, so it flies home
# on its own (no teleport: snapping it back every second looked like lag). Only one lost beyond 80 blocks is moved.
execute as @e[type=phantom,tag=vd.warden] at @s unless entity @e[type=marker,tag=vd.warded,distance=..24] at @n[type=marker,tag=vd.warded] positioned ~ ~8 ~ run function void_dragon:towers/warden_home
execute as @e[type=phantom,tag=vd.warden] at @s unless entity @e[type=marker,tag=vd.warded,distance=..80] at @n[type=marker,tag=vd.warded] run tp @s ~ ~10 ~
