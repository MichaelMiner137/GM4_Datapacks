
# replace sapling
execute if score $sapling gm4_gv_generation matches 1 run setblock ~ ~ ~ oak_sapling
execute if score $sapling gm4_gv_generation matches 2 run setblock ~ ~ ~ birch_sapling
execute if score $sapling gm4_gv_generation matches 3 run setblock ~ ~ ~ spruce_sapling
execute if score $sapling gm4_gv_generation matches 4 run setblock ~ ~ ~ jungle_sapling
execute if score $sapling gm4_gv_generation matches 5 run setblock ~ ~ ~ dark_oak_sapling
execute if score $sapling gm4_gv_generation matches 6 run setblock ~ ~ ~ acacia_sapling
execute if score $sapling gm4_gv_generation matches 7 run setblock ~ ~ ~ cherry_sapling
execute if score $sapling gm4_gv_generation matches 8 run setblock ~ ~ ~ mangrove_propagule

data modify storage gm4_garden_variety:debug path append value "[Failed]"
