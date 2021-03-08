# initializes a TREE_TYPE leaf
# @s = a freshly generated TREE_TYPE sapling leaf
# run from gm4_natural_trees:trees/TREE_TYPE/fruiting/leaf/fruit/generate

# set first stage change timer
scoreboard players operation @s gm4_fruit_stage = #king_palm_fruit_stage_0_start gm4_fruit_data

# set age
scoreboard players operation @s gm4_fruit_age = #king_palm_fruit_stage_2_start gm4_fruit_data

# finalize armor stand data
data merge entity @s {Tags:["gm4_fruiting_leaf","gm4_king_palm_fruit_leaf","gm4_ripe_king_palm_fruit"],HandItems:[{id:"minecraft:sweet_berries",Count:1b,tag:{display:{Name:'{"text":"King Palm Fruit","italic":false}'}}},{}]}
