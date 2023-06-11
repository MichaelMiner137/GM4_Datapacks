
execute align xyz store success score $dropped_item gm4_garden_variety run kill @e[type=item,nbt={Item:{id:"minecraft:birch_sapling",Count:1b}},nbt=!{Item:{tag:{}}},limit=1,dx=0]
execute if score $dropped_item gm4_garden_variety matches 1.. run loot spawn ~ ~ ~ loot gm4_garden_variety:items/king_palm_sapling
scoreboard players reset $dropped_item gm4_garden_variety
