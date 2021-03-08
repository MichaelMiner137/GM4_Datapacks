# attempts to place sapling leaf marker on the current block
# run from gm4_garden_variety:generate/palm_tree/king_palm/generation/palm

scoreboard players operation sapling_leaf_success gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation sapling_leaf_success gm4_tree_data %= #20 gm4_math_num
function gm4_garden_variety:get/next_seed_value

execute if score sapling_leaf_success gm4_tree_data matches 1..2 at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:leaves[persistent=false] run function gm4_garden_variety:generate/palm_tree/king_palm/generation/decoration/sapling_leaf/place
