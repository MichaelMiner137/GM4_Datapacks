# generate the tree's palm layers (about 1 block)
# @s = TREE_TYPE palm AEC marker
# run from gm4_garden_variety:generation/palm_tree/palm_layer

# generate sapling leaves
execute if score sapling_leaves gm4_tree_data matches 1.. if score current_leaf_layer gm4_tree_data matches 2.. run function gm4_garden_variety:generate/palm_tree/king_palm/generation/decoration/sapling_leaf/attempt
