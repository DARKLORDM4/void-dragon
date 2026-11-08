# context: the dragon, every 10 ticks. Shows the name of every attack that started in the last 3 s above the hotbar,
# joined with ' + ' when several run together (combos). Names are stored as text compounds, not JSON strings,
# because 26.x shows a stored string literally instead of reading it as text.
data modify storage void_dragon:storage hud set value []
execute if score @s vd.lance matches 1..60 run data modify storage void_dragon:storage hud append value {text:"Void Lances",color:"light_purple",bold:true}
execute if score @s vd.orbs matches 1..60 run data modify storage void_dragon:storage hud append value {text:"Abyssal Orbs",color:"dark_purple",bold:true}
execute if score @s vd.rift matches 1..60 run data modify storage void_dragon:storage hud append value {text:"Rift Tear",color:"red",bold:true}
execute if score @s vd.thunder matches 1..60 run data modify storage void_dragon:storage hud append value {text:"Thunderstrike",color:"yellow",bold:true}
execute if score @s vd.pull matches 1..60 run data modify storage void_dragon:storage hud append value {text:"Gravity Crash",color:"dark_aqua",bold:true}
execute if score @s vd.meteor matches 1..60 run data modify storage void_dragon:storage hud append value {text:"Meteor Rain",color:"gold",bold:true}
execute if score @s vd.vfire matches 1..60 run data modify storage void_dragon:storage hud append value {text:"Void Fire",color:"light_purple",bold:true}
execute if score @s vd.act matches 4200..4260 run data modify storage void_dragon:storage hud append value {text:"Void Shriek",color:"light_purple",bold:true}
execute if score @s vd.act matches 5000..5070 run data modify storage void_dragon:storage hud append value {text:"Void Dive",color:"light_purple",bold:true}
execute if score @s vd.act matches 5200..5276 run data modify storage void_dragon:storage hud append value {text:"Void Quake",color:"gold",bold:true}
execute if score @s vd.tail matches 1..40 run data modify storage void_dragon:storage hud append value {text:"Tail Sweep",color:"gold",bold:true}
execute if score @s vd.lst matches 1..60 run data modify storage void_dragon:storage hud append value {text:"LAST STAND",color:"dark_red",bold:true}
execute if data storage void_dragon:storage hud[0] run title @a[distance=..160] actionbar [{"text":"⚔ ","color":"gray"},{"nbt":"hud[]","storage":"void_dragon:storage","interpret":true,"separator":{"text":" + ","color":"gray"}},{"text":" ⚔","color":"gray"}]
