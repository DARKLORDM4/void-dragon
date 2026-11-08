# context: a brand-new dragon (fight start). Everyone in the End hears it wake up, wherever they are.
execute if score respawn_sound vd.cfg matches 1 as @a[predicate=void_dragon:where/in_end] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~ 1 .5
execute if score respawn_sound vd.cfg matches 1 as @a[predicate=void_dragon:where/in_end] at @s run playsound minecraft:block.end_portal.spawn hostile @s ~ ~ ~ .6 .6
