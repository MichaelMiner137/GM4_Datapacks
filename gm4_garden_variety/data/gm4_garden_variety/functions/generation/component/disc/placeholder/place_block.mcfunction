
# track segments
scoreboard players add $stat.placeholder_attempts gm4_gv_generation 1

# create placeholder block
data modify storage gm4_garden_variety:macro place_placeholder.placeholder_data set from storage gm4_garden_variety:new placeholder
execute if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/placement/place with storage gm4_garden_variety:macro place_placeholder
