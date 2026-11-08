# context: a player who killed the Ender Dragon (advancement void_dragon:dragon_down)
advancement revoke @s only void_dragon:dragon_down
# the killing blow: the death animation starts at once
execute in the_end as @e[type=ender_dragon] at @s run function void_dragon:fx/death_start
function void_dragon:reward/slayer/award
scoreboard players set xp_boost_timer vd.state 300
scoreboard players set portal_glow vd.state 1200
execute in the_end positioned 0 80 0 run function void_dragon:dragon/cleanup
execute if score victory_fx vd.cfg matches 1 in the_end positioned 0 80 0 run function void_dragon:dragon/victory
