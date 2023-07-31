
scoreboard players operation #input_min gm4_garden_variety = $y.curl.stop.min gm4_gv_component
scoreboard players operation #input_max gm4_garden_variety = $y.curl.stop.max gm4_gv_component
function gm4_garden_variety:utility/calculate_range/activate
scoreboard players operation $y.curl.stop gm4_gv_component = #output gm4_garden_variety
