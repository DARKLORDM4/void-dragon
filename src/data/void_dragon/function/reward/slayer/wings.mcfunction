# context: the player who dealt the most damage to the dragon.
# Setting wings_every_kill: 0 = only the first dragon kill in this world, 1 = every kill.
execute unless score wings_every_kill vd.cfg matches 1 if score wings_given vd.state matches 1 run return 0
scoreboard players set wings_given vd.state 1
give @s elytra[item_name={text:"Dragon Wings",color:"light_purple"},lore=[{text:"Torn from the Ender Dragon by its greatest foe",color:"dark_purple",italic:false}],enchantments={"minecraft:unbreaking":10,"minecraft:mending":2},max_damage=864,rarity="epic",item_model="void_dragon:dragon_wings",equippable={slot:"chest",asset_id:"void_dragon:dragon_wings",equip_sound:"minecraft:item.armor.equip_elytra",damage_on_hurt:false}]
tellraw @a [{"selector":"@s","color":"light_purple"},{"text":" earned the ","color":"gray"},{"text":"Dragon Wings","color":"light_purple","bold":true},{"text":"!","color":"gray"}]
playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 1 .7
