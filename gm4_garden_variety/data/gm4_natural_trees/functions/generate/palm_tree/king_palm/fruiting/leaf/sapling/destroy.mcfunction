# removes an TREE_TYPE sapling leaf armor stand if it is not inside a leaf anymore
# @s = any TREE_TYPE sapling leaf
# at @s align xyz positioned at the leaf block
# run from gm4_natural_trees:trees/TREE_TYPE/fruiting/leaf/sapling/destroy

# spawn apple
loot spawn ~0.5 ~ ~0.5 loot gm4_natural_trees:blocks/sapling_leaf/king_palm

# kill
kill @s
