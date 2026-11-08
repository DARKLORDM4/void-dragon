# in the End at the island centre: everything the fight left behind goes away
function void_dragon:phase/desperate/clear
function void_dragon:brothers/clear
function void_dragon:shield/clear
kill @e[tag=vd.minion]
kill @e[type=marker,tag=vd.dive_spot]
kill @e[type=marker,tag=vd.dive_pivot]
kill @e[type=marker,tag=vd.slam_spot]
kill @e[type=marker,tag=vd.slam_pivot]
kill @e[type=marker,tag=vd.quake]
kill @e[type=endermite,tag=vd.orbmite]
kill @e[type=marker,tag=vd.lance]
kill @e[type=marker,tag=vd.orb]
kill @e[type=marker,tag=vd.rift]
kill @e[type=marker,tag=vd.crashfx]
tag @a remove vd.crashed
tag @a remove vd.shrieked
effect clear @a[distance=..256] minecraft:levitation
execute unless score dragon_block_damage vd.cfg matches 1 run function void_dragon:towers/restore_griefing
function void_dragon:music/stop_all
