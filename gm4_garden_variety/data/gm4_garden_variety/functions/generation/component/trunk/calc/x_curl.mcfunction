
# x.curl
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #x.curl.diff gm4_gv_component = $x.curl.max gm4_gv_component
scoreboard players operation #x.curl.diff gm4_gv_component -= $x.curl.min gm4_gv_component
scoreboard players add #x.curl.diff gm4_gv_component 1
scoreboard players operation $x.curl.value gm4_gv_component = $sub_seed gm4_gv_generation
scoreboard players operation $x.curl.value gm4_gv_component %= #x.curl.diff gm4_gv_component
scoreboard players operation $x.curl.value gm4_gv_component += $x.curl.min gm4_gv_component
