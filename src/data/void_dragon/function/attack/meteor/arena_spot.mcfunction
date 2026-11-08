
# context: the dragon. One meteor ring on a random solid spot of the island (random direction, 3-60 blocks from the centre).
# Spots over the void are re-rolled (up to 8 tries).
scoreboard players set #mtry vd.tmp 0
function void_dragon:attack/meteor/arena_try
playsound minecraft:entity.blaze.shoot hostile @a[distance=..256] ~ ~ ~ 4 .5
