
scoreboard players add #counter.pointer.random gm4_gv_component 1

# data
scoreboard players operation #new_pointer.identifier gm4_gv_component = $pointer.random.identifier gm4_gv_component
function gm4_garden_variety:generation/component/line/pointer/store_data

# create pointer
execute unless score #new_pointer.identifier gm4_gv_component matches -1 run function gm4_garden_variety:generation/pointer/create_pointer
