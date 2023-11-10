
# additional placeholder processing
execute as @e[type=marker,tag=gm4_gv_generation_placeholder,tag=gm4_gv_placeholder_composite_enabled] at @s run function gm4_garden_variety:generation/placeholder/compositing/add_data

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

# start generating
function gm4_garden_variety:generation/placeholder/generation/clock

# debug
data modify storage gm4_garden_variety:debug path append value "[Passed]"
data modify storage gm4_garden_variety:debug path append value "   ("
execute store result storage gm4_garden_variety:debug hold int 1 run scoreboard players get $placeholders gm4_gv_generation
data modify storage gm4_garden_variety:debug path append string storage gm4_garden_variety:debug hold
data modify storage gm4_garden_variety:debug path append value "/"
execute store result storage gm4_garden_variety:debug hold int 1 run scoreboard players get $stat.placeholder_attempts gm4_gv_generation
data modify storage gm4_garden_variety:debug path append string storage gm4_garden_variety:debug hold
data modify storage gm4_garden_variety:debug path append value ", "
scoreboard players operation $stat.placeholder_percentage gm4_gv_generation = $placeholders gm4_gv_generation
scoreboard players operation $stat.placeholder_percentage gm4_gv_generation *= #100 gm4_garden_variety
scoreboard players operation $stat.placeholder_percentage gm4_gv_generation /= $stat.placeholder_attempts gm4_gv_generation
execute store result storage gm4_garden_variety:debug hold int 1 run scoreboard players get $stat.placeholder_percentage gm4_gv_generation
data modify storage gm4_garden_variety:debug path append string storage gm4_garden_variety:debug hold
data modify storage gm4_garden_variety:debug path append value "%)"
