
# y.bend
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #y.bend.diff gm4_gv_component = $y.bend.max gm4_gv_component
scoreboard players operation #y.bend.diff gm4_gv_component -= $y.bend.min gm4_gv_component
scoreboard players add #y.bend.diff gm4_gv_component 1
scoreboard players operation $y.bend.value gm4_gv_component = $sub_seed gm4_gv_generation
scoreboard players operation $y.bend.value gm4_gv_component %= #y.bend.diff gm4_gv_component
scoreboard players operation $y.bend.value gm4_gv_component += $y.bend.min gm4_gv_component
