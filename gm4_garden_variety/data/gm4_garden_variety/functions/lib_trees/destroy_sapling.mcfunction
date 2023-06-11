
# check if module loaded, and is from garden variety
execute if score gm4_garden_variety load.status matches 1.. if data entity @s data.gm4_garden_variety run function gm4_garden_variety:lib_trees/modified/destroy_sapling
