# context: an arrow next to VEXIS. If he shot it, it also gives Slow Falling.
tag @s add vd.bro_sf
execute on origin if entity @s[type=stray,tag=vd.bro_archer] run tag @n[type=arrow,tag=vd.bro_sf,distance=..4] add vd.bro_sfme
execute if entity @s[tag=vd.bro_sfme] run data modify entity @s item.components."minecraft:potion_contents".custom_effects append value {id:"minecraft:slow_falling",amplifier:0,duration:100}
execute if entity @s[tag=vd.bro_sfme] unless data entity @s item.id run data modify entity @s item.id set value "minecraft:tipped_arrow"
tag @s remove vd.bro_sfme
