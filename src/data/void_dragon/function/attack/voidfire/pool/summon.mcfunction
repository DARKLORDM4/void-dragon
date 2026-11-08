# context: positioned on the ground. At most 24 pools exist at once; none over the void.
execute store result score #n vd.tmp if entity @e[type=marker,tag=vd.pool]
execute if score #n vd.tmp matches ..23 unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.pool"]}
