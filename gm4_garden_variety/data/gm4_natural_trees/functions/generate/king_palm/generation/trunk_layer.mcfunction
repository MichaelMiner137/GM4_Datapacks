# generate the tree's trunk layers (about 1 block)
# @s = TREE_TYPE trunk AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/trunk_layer

#tellraw @p ["",{"score":{"name":"current_trunk_layer","objective":"gm4_tree_data"}}," >= ",{"score":{"name":"fruit_leaves_start_height","objective":"gm4_tree_data"}}]

#execute align xyz positioned ~ ~ ~ if score current_trunk_layer gm4_tree_data > fruit_leaves_start_height gm4_tree_data run particle barrier ~ ~ ~2


# generate fruit leaves on side of tree
execute if score fruit_leaves gm4_tree_data matches 1.. if score current_trunk_layer gm4_tree_data >= fruit_leaves_start_height gm4_tree_data positioned ~ ~.5 ~ run function gm4_natural_trees:generate/king_palm/generation/decoration/fruit_leaf/attempt
