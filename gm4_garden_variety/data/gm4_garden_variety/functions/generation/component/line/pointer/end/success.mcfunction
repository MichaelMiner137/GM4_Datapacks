
scoreboard players add #counter.pointer.end gm4_gv_component 1

scoreboard players operation #new_pointer.identifier gm4_gv_component = $pointer.end.identifier gm4_gv_component
function gm4_garden_variety:generation/component/line/pointer/store_data

function gm4_garden_variety:generation/pointer/create_pointer
