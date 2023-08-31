
scoreboard players operation #input_min gm4_garden_variety = $pointer.pattern.start.min gm4_gv_component
scoreboard players operation #input_max gm4_garden_variety = $pointer.pattern.start.max gm4_gv_component
function gm4_garden_variety:utility/calculate_range/activate
scoreboard players operation $pointer.pattern.start gm4_gv_component = #output gm4_garden_variety
