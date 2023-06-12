
# y.curl
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #y.curl.diff gm4_gv_component = $y.curl.max gm4_gv_component
scoreboard players operation #y.curl.diff gm4_gv_component -= $y.curl.min gm4_gv_component
scoreboard players add #y.curl.diff gm4_gv_component 1
scoreboard players operation $y.curl.value gm4_gv_component = $sub_seed gm4_gv_generation
scoreboard players operation $y.curl.value gm4_gv_component %= #y.curl.diff gm4_gv_component
scoreboard players operation $y.curl.value gm4_gv_component += $y.curl.min gm4_gv_component
