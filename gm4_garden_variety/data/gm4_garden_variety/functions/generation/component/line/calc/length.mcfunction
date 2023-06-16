
# length
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #length.diff gm4_gv_component = $length.max gm4_gv_component
scoreboard players operation #length.diff gm4_gv_component -= $length.min gm4_gv_component
scoreboard players add #length.diff gm4_gv_component 1
scoreboard players operation $length.value gm4_gv_component = $sub_seed gm4_gv_generation
scoreboard players operation $length.value gm4_gv_component %= #length.diff gm4_gv_component
scoreboard players operation $length.value gm4_gv_component += $length.min gm4_gv_component
scoreboard players reset $length.min gm4_gv_component
scoreboard players reset $length.max gm4_gv_component
