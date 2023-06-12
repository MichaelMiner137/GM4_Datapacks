
# x.bend
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #x.bend.diff gm4_gv_component = $x.bend.max gm4_gv_component
scoreboard players operation #x.bend.diff gm4_gv_component -= $x.bend.min gm4_gv_component
scoreboard players add #x.bend.diff gm4_gv_component 1
scoreboard players operation $x.bend.value gm4_gv_component = $sub_seed gm4_gv_generation
scoreboard players operation $x.bend.value gm4_gv_component %= #x.bend.diff gm4_gv_component
scoreboard players operation $x.bend.value gm4_gv_component += $x.bend.min gm4_gv_component
