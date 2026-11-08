# context: a brother or Nightmaw right after it spawns. Scales its melee hits by the "Brothers damage" setting.
attribute @s minecraft:attack_damage modifier remove void_dragon:bro_power
execute if score bro_damage vd.cfg matches 1 run attribute @s minecraft:attack_damage modifier add void_dragon:bro_power 0.25 add_multiplied_total
execute if score bro_damage vd.cfg matches 2.. run attribute @s minecraft:attack_damage modifier add void_dragon:bro_power 0.5 add_multiplied_total
