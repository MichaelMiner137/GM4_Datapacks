
# x.rotation
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #x.rotation.diff gm4_gv_component = $x.rotation.max gm4_gv_component
scoreboard players operation #x.rotation.diff gm4_gv_component -= $x.rotation.min gm4_gv_component
scoreboard players add #x.rotation.diff gm4_gv_component 1
scoreboard players operation $x.rotation.value gm4_gv_component = $sub_seed gm4_gv_generation
scoreboard players operation $x.rotation.value gm4_gv_component %= #x.rotation.diff gm4_gv_component
scoreboard players operation $x.rotation.value gm4_gv_component += $x.rotation.min gm4_gv_component
scoreboard players reset $x.rotation.min gm4_gv_component
scoreboard players reset $x.rotation.max gm4_gv_component
