# macro: want / acc / turn for dragon/steer (speed x100 per tick, turn in tenths of a degree per tick)
$scoreboard players set #want vd.tmp $(want)
$scoreboard players set #acc vd.tmp $(acc)
$scoreboard players set #turn vd.tmp $(turn)
function void_dragon:dragon/steer/go
