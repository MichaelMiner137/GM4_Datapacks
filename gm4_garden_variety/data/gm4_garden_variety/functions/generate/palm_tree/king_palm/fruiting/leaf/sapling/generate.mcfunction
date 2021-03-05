# places a TREE_TYPE sapling leaf marker
# run from TODO

# place leaf marker
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {CustomName:'"King Palm Sapling Leaf"',Tags:["gm4_fruiting_leaf_new"],NoGravity:1,Age:-2147483648,Duration:2147483647}

# initialize
execute as @e[type=area_effect_cloud,tag=gm4_fruiting_leaf_new,limit=1] at @s run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/sapling/initialize
