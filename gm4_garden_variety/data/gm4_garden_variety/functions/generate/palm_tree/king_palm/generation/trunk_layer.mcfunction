# generate the tree's trunk layers (about 1 block)
# @s = TREE_TYPE trunk AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/trunk_layer

# generate fruit leaves on side of tree
execute if score fruit_leaves gm4_tree_data matches 1.. if score current_trunk_layer gm4_tree_data matches 7.. run function gm4_garden_variety:generate/palm_tree/king_palm/generation/decoration/fruit_leaf/attempt
