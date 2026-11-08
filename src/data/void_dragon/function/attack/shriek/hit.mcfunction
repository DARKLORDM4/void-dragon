# context: as/at a player the shriek wave just reached. No damage: one real knockback hit (about 15 blocks) away from the island centre.
# A one-tick invisible armor stand holds the void_dragon:shriek_blast enchantment: its tick effect is a no-damage wind blast
# placed between the player and the centre (knockback strength is set in data/void_dragon/enchantment/shriek_blast.json).
tag @s add vd.shrieked
execute facing 0 ~ 0 positioned ^ ^1.1 ^1.2 run summon armor_stand ~ ~ ~ {Tags:["vd.blast"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"void_dragon:shriek_blast":1}}}}}
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @s
particle cloud ~ ~1 ~ .4 .6 .4 .15 20 force @a[distance=..64]
playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 2 1.4
