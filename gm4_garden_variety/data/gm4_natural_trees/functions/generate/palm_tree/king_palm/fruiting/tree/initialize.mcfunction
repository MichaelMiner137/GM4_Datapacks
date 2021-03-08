# checks the maximum height of the tree
# @s any gm4_TREE_TYPE_sapling
# at @s align xyz
# run from gm4_natural_trees:fruiting/tree/validate_species

# determine available height
function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/tree/layer/check_clear_space
# $max_layer is now the height available to the tree to grow
execute if score $max_layer gm4_tree_layer >= #king_palm_min_height gm4_tree_limit run scoreboard players set $cancel_generation gm4_tree_layer 0
