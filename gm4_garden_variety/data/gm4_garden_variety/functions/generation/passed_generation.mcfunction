
# additional placeholder processing
execute as @e[type=marker,tag=gm4_gv_generation_placeholder] at @s run function gm4_garden_variety:generation/placeholder/init_placeholder

# fill in placeholder blocks
execute run function #gm4_garden_variety:generate_tree

# fail replace sapling
execute if score $clearance gm4_gv_generation matches 0 if score $sapling gm4_gv_generation matches 1 run setblock ~ ~ ~ oak_sapling
execute if score $clearance gm4_gv_generation matches 0 if score $sapling gm4_gv_generation matches 2 run setblock ~ ~ ~ birch_sapling
execute if score $clearance gm4_gv_generation matches 0 if score $sapling gm4_gv_generation matches 3 run setblock ~ ~ ~ spruce_sapling
execute if score $clearance gm4_gv_generation matches 0 if score $sapling gm4_gv_generation matches 4 run setblock ~ ~ ~ jungle_sapling
execute if score $clearance gm4_gv_generation matches 0 if score $sapling gm4_gv_generation matches 5 run setblock ~ ~ ~ dark_oak_sapling
execute if score $clearance gm4_gv_generation matches 0 if score $sapling gm4_gv_generation matches 6 run setblock ~ ~ ~ acacia_sapling
execute if score $clearance gm4_gv_generation matches 0 if score $sapling gm4_gv_generation matches 7 run setblock ~ ~ ~ cherry_sapling
execute if score $clearance gm4_gv_generation matches 0 if score $sapling gm4_gv_generation matches 8 run setblock ~ ~ ~ mangrove_propagule

# clean up
execute if score $clearance gm4_gv_generation matches 1 run kill @s

data modify storage gm4_garden_variety:debug path append value "[Passed]"
