
scoreboard players operation #input_min gm4_garden_variety = $relative.x.offset.min gm4_gv_component
scoreboard players operation #input_max gm4_garden_variety = $relative.x.offset.max gm4_gv_component
function gm4_garden_variety:utility/calculate_range/activate
scoreboard players operation $relative.x.offset gm4_gv_component = #output gm4_garden_variety
