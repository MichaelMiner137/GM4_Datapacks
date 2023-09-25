
# load data
function gm4_garden_variety:generation/placeholder/load_data

# capped ends and surrounded
function gm4_garden_variety:generation/placeholder/get_group_data with storage gm4_garden_variety:macro get_group_data

# update data
data modify storage gm4_garden_variety:new placeholder set from storage gm4_garden_variety:reference placeholder
execute store result storage gm4_garden_variety:new placeholder.capped int 1 run scoreboard players get $capped gm4_gv_placeholder
execute store result storage gm4_garden_variety:new placeholder.surrounded int 1 run scoreboard players get $surrounded gm4_gv_placeholder
data modify entity @s data.gm4_garden_variety.placeholder set from storage gm4_garden_variety:new placeholder
