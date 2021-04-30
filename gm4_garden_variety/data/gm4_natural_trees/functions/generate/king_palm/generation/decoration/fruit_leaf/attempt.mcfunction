# attempts to place fruit leaf on the side of the trunk
# run from gm4_natural_trees:generate/king_palm/generation/trunk

scoreboard players operation fruit_success gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation fruit_success gm4_tree_data %= fruit_leaves_block_chance gm4_tree_data
function gm4_garden_variety:data/get/next_seed_value



execute if score fruit_success gm4_tree_data matches 0 run scoreboard players operation fruit_side gm4_tree_data = current_seed gm4_tree_data
execute if score fruit_success gm4_tree_data matches 0 run scoreboard players operation fruit_side gm4_tree_data %= #4 gm4_gv_math_num
execute if score fruit_success gm4_tree_data matches 0 run scoreboard players add fruit_side gm4_tree_data 1
function gm4_garden_variety:data/get/next_seed_value


scoreboard players set fruit_per_layer gm4_tree_data 4
execute if score fruit_success gm4_tree_data matches 1 run summon area_effect_cloud ~ ~ ~ {Tags:["gm4_tree_fruit_marker"]}
execute as @e[type=area_effect_cloud,tag=gm4_tree_fruit_marker,limit=1,sort=nearest] at @s run function gm4_natural_trees:generate/king_palm/generation/decoration/fruit_leaf/place


