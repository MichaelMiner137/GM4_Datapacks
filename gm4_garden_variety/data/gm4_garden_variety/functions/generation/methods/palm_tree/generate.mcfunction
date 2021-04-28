# generates the tree's trunk layers 
# @s = TREE_TYPE trunk AEC marker
# run from gm4_MODULE_ID:generate/TREE_TYPE/initialize

# set scores for the next part of generation
scoreboard players operation trunk_layer_loop gm4_tree_data = trunk_layers gm4_tree_data
scoreboard players operation leaf_layer_loop gm4_tree_data = leaf_layers gm4_tree_data
scoreboard players set current_trunk_layer gm4_tree_data 1
scoreboard players set current_leaf_layer gm4_tree_data 1

# set trunk layer at which leaves will begin generating
scoreboard players operation leaf_start gm4_tree_data = trunk_layers gm4_tree_data
scoreboard players operation leaf_start gm4_tree_data -= leaf_layer_start gm4_tree_data
scoreboard players add leaf_start gm4_tree_data 1

# summon nametag
execute if score tagged gm4_gv_nbt_data matches 2 run summon item ~ ~ ~ {Tags:["gm4_gv_add_trait_lore"],Item:{id:"minecraft:name_tag",Count:1b}}
execute if score tagged gm4_gv_nbt_data matches 2 as @e[type=item,distance=..1,limit=1,sort=nearest,tag=gm4_gv_add_trait_lore] run function gm4_garden_variety:data/modify/item/add_trait_lore

# remove tagged nbt
scoreboard players set tagged gm4_gv_nbt_data 0

# begin generation 
function gm4_garden_variety:generation/methods/palm_tree/trunk

