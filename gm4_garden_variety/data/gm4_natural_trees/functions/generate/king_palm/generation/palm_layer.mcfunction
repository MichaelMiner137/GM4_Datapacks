# generate the tree's palm layers (about 1 block)
# @s = TREE_TYPE palm AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/palm_layer

# generate sapling leaves
execute if score sapling_leaves gm4_tree_data matches 1.. if score current_leaf_layer gm4_tree_data >= sapling_leaves_start_layer gm4_tree_data run function gm4_natural_trees:generate/king_palm/generation/leaves/sapling/attempt
