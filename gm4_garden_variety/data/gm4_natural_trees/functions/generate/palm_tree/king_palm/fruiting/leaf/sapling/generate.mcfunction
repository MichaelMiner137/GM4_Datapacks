# places a TREE_TYPE sapling leaf marker
# run from TODO

# place leaf marker
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {CustomName:'"King Palm Sapling Leaf"',Tags:["gm4_fruiting_leaf_new"],NoGravity:1,Age:-2147483648,Duration:2147483647}

# encode trait scores into scoreboard
execute as @e[type=area_effect_cloud,distance=..1,limit=1,nbt={Age:-2147483648},tag=gm4_fruiting_leaf_new] run function gm4_garden_variety:storage_data/encode

# initialize
execute as @e[type=area_effect_cloud,tag=gm4_fruiting_leaf_new,limit=1] at @s run function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/leaf/sapling/initialize
