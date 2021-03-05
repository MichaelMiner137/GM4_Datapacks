# removes an TREE_TYPE fruit leaf armor stand if it is not inside a leaf anymore
# @s = any TREE_TYPE fruit leaf
# at @s align xyz positioned at the leaf block
# run from gm4_garden_variety:trees/TREE_TYPE/fruiting/leaf/fruit/destroy

# spawn apple
execute if data entity @s[tag=gm4_ripe_king_palm_fruit] HandItems[0].id positioned ~0.5 ~1.5 ~0.5 run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/spawn_fruit
loot spawn ~0.5 ~ ~0.5 loot gm4_garden_variety:blocks/fruit_leaf/king_palm

# kill
kill @s
