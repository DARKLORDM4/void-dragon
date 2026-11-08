
# context: the dragon, FIRST thing every tick while a shield is up.
# The Invulnerable tag does not protect the dragon's body parts, so the shield undoes any health it lost since last tick.
execute store result score #dh vd.tmp run data get entity @s Health 100
execute unless score shield_hp vd.state matches 1.. run scoreboard players operation shield_hp vd.state = #dh vd.tmp
execute if score #dh vd.tmp < shield_hp vd.state if score #dh vd.tmp matches 1.. run function void_dragon:shield/absorb
# healing (crystals) is kept
execute if score #dh vd.tmp > shield_hp vd.state run scoreboard players operation shield_hp vd.state = #dh vd.tmp
