# attempts to place fruit leaf on the side of the trunk
# run from gm4_natural_trees:generate/king_palm/generation/trunk

scoreboard players operation fruit_success gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation fruit_success gm4_tree_data %= #3 gm4_math_num
function gm4_garden_variety:get/next_seed_value

execute if score fruit_success gm4_tree_data matches 0 run scoreboard players operation fruit_side gm4_tree_data = current_seed gm4_tree_data
execute if score fruit_success gm4_tree_data matches 0 run scoreboard players operation fruit_side gm4_tree_data %= #4 gm4_math_num
execute if score fruit_success gm4_tree_data matches 0 run scoreboard players add fruit_side gm4_tree_data 1
function gm4_garden_variety:get/next_seed_value

execute if score fruit_side gm4_tree_data matches 1 at @s align xyz positioned ~0.5 ~ ~1.0 if block ~ ~ ~ air if block ~ ~-1 ~ air run function gm4_natural_trees:generate/king_palm/generation/decoration/fruit_leaf/place
execute if score fruit_side gm4_tree_data matches 2 at @s align xyz positioned ~1.0 ~ ~0.5 if block ~ ~ ~ air if block ~ ~-1 ~ air run function gm4_natural_trees:generate/king_palm/generation/decoration/fruit_leaf/place
execute if score fruit_side gm4_tree_data matches 3 at @s align xyz positioned ~0.5 ~ ~-1.0 if block ~ ~ ~ air if block ~ ~-1 ~ air run function gm4_natural_trees:generate/king_palm/generation/decoration/fruit_leaf/place
execute if score fruit_side gm4_tree_data matches 4 at @s align xyz positioned ~-1.0 ~ ~0.5 if block ~ ~ ~ air if block ~ ~-1 ~ air run function gm4_natural_trees:generate/king_palm/generation/decoration/fruit_leaf/place
