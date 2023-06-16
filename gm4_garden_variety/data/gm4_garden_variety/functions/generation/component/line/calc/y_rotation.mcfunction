
# y.rotation
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #y.rotation.diff gm4_gv_component = $y.rotation.max gm4_gv_component
scoreboard players operation #y.rotation.diff gm4_gv_component -= $y.rotation.min gm4_gv_component
scoreboard players add #y.rotation.diff gm4_gv_component 1
scoreboard players operation $y.rotation.value gm4_gv_component = $sub_seed gm4_gv_generation
scoreboard players operation $y.rotation.value gm4_gv_component %= #y.rotation.diff gm4_gv_component
scoreboard players operation $y.rotation.value gm4_gv_component += $y.rotation.min gm4_gv_component
scoreboard players operation $y.rotation.value gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players reset $y.rotation.min gm4_gv_component
scoreboard players reset $y.rotation.max gm4_gv_component
