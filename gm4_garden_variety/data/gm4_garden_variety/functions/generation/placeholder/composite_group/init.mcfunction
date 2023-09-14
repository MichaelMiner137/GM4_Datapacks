
# load data
function gm4_garden_variety:generation/placeholder/load_data

# capped ends and surrounded
execute unless score $composite_group gm4_gv_placeholder matches 2..6 run function gm4_garden_variety:generation/placeholder/composite_group/1
execute if score $composite_group gm4_gv_placeholder matches 2 run function gm4_garden_variety:generation/placeholder/composite_group/2
execute if score $composite_group gm4_gv_placeholder matches 3 run function gm4_garden_variety:generation/placeholder/composite_group/3
execute if score $composite_group gm4_gv_placeholder matches 4 run function gm4_garden_variety:generation/placeholder/composite_group/4
execute if score $composite_group gm4_gv_placeholder matches 5 run function gm4_garden_variety:generation/placeholder/composite_group/5
execute if score $composite_group gm4_gv_placeholder matches 6 run function gm4_garden_variety:generation/placeholder/composite_group/6

# update data
data modify storage gm4_garden_variety:new placeholder set from storage gm4_garden_variety:reference placeholder
execute store result storage gm4_garden_variety:new placeholder.capped int 1 run scoreboard players get $capped gm4_gv_placeholder
execute store result storage gm4_garden_variety:new placeholder.surrounded int 1 run scoreboard players get $surrounded gm4_gv_placeholder
data modify entity @s data.gm4_garden_variety.placeholder set from storage gm4_garden_variety:new placeholder
