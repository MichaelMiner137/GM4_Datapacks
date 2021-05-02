# generate the tree's trunk layers (about 1 block)
# @s = TREE_TYPE trunk AEC marker
# run from gm4_garden_variety:generation/trees/palm_tree/trunk_layer



# generate fruit leaves on side of tree
execute if score fruit_leaves gm4_gv_gen_data matches 1.. if score current_trunk_layer gm4_gv_gen_data >= fruit_leaves_start_height gm4_gv_gen_data positioned ~ ~.5 ~ run function gm4_garden_variety:generation/other_features/trunk_fruit/initialize
