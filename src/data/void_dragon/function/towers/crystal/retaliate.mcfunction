# context: as/at the destroyed crystal's marker. The dragon answers: lightning, phantoms or a meteor (two answers when desperate).
execute store result score #k vd.tmp run random value 1..3
execute if score #k vd.tmp matches 1 run function void_dragon:towers/crystal/ret_lightning
execute if score #k vd.tmp matches 2 run function void_dragon:towers/crystal/ret_phantoms
execute if score #k vd.tmp matches 3 run function void_dragon:towers/crystal/ret_meteor
execute if score desperate vd.state matches 1 store result score #k vd.tmp run random value 1..3
execute if score desperate vd.state matches 1 if score #k vd.tmp matches 1 run function void_dragon:towers/crystal/ret_lightning
execute if score desperate vd.state matches 1 if score #k vd.tmp matches 2 run function void_dragon:towers/crystal/ret_phantoms
execute if score desperate vd.state matches 1 if score #k vd.tmp matches 3 run function void_dragon:towers/crystal/ret_meteor
