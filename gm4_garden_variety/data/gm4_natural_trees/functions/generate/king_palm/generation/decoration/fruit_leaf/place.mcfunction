# places fruit leaf
# run from gm4_natural_trees:generate/king_palm/generation/decoration/fruit_leaf/attempt

# debug
data modify storage gm4_garden_variety:debug/generation path append value "f"

execute if score fruit_per_layer gm4_tree_data matches 4 if score fruit_side gm4_tree_data matches 1 run data modify entity @s Rotation[0] set value 0
execute if score fruit_per_layer gm4_tree_data matches 4 if score fruit_side gm4_tree_data matches 2 run data modify entity @s Rotation[0] set value 90 
execute if score fruit_per_layer gm4_tree_data matches 4 if score fruit_side gm4_tree_data matches 3 run data modify entity @s Rotation[0] set value 180
execute if score fruit_per_layer gm4_tree_data matches 4 if score fruit_side gm4_tree_data matches 4 run data modify entity @s Rotation[0] set value 270




execute at @s if block ^1 ^-1 ^ air run scoreboard players remove fruit_leaves gm4_tree_data 1
execute at @s if block ^1 ^-1 ^ air run setblock ^1 ^ ^ birch_leaves[persistent=true] keep
execute at @s if block ^1 ^-1 ^ air positioned ^1 ^ ^ positioned ~ ~-1 ~ run function gm4_natural_trees:generate/king_palm/fruiting/leaf/fruit/generate
execute at @s run tp @s ~ ~ ~ ~90 ~





scoreboard players remove fruit_per_layer gm4_tree_data 1
execute if score fruit_per_layer gm4_tree_data matches 1.. if score fruit_leaves gm4_tree_data matches 1.. run function gm4_natural_trees:generate/king_palm/generation/decoration/fruit_leaf/place
execute if score fruit_per_layer gm4_tree_data matches 0 run kill @s