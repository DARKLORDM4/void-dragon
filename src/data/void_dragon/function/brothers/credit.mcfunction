# context: a brother or Nightmaw that just lost #now..bro_hp health (x100) to players.
# The loss (rounded to whole health) is shared by the players who hit them this tick.
scoreboard players operation #loss vd.tmp = @s vd.bro_hp
scoreboard players operation #loss vd.tmp -= #now vd.tmp
function void_dragon:brothers/credit_share
