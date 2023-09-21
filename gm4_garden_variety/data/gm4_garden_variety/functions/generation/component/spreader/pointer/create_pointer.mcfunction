
# data
data remove storage gm4_garden_variety:new pointer
execute store result storage gm4_garden_variety:new pointer.identifier int 1 run scoreboard players get $pointers.identifier gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.rotation.x int 1 run scoreboard players get #spreader_generator.pointer_rotation.x gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.rotation.y int 1 run scoreboard players get #spreader_generator.pointer_rotation.y gm4_gv_component

# create pointer
execute unless score $pointers.identifier gm4_gv_component matches -1 run function gm4_garden_variety:generation/pointer/create_pointer
