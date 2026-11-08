# context: an orb that is not boosted yet. A first-kill dragon drops orbs worth 100+ xp; a repeat kill never does.
execute store result score #ov vd.tmp run data get entity @s Value
execute if score #ov vd.tmp matches 100.. run scoreboard players set xp_first vd.state 1
