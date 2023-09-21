
# data
data remove storage gm4_garden_variety:new pointer
execute store result storage gm4_garden_variety:new pointer.identifier int 1 run scoreboard players get $pointer.identifier gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.rotation.x int 1 run scoreboard players get #pivot_generator.x_rotation gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.rotation.y int 1 run scoreboard players get #pivot_generator.y_rotation gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.bend.x.direction int 1 run scoreboard players get #active_pointer.bend.x.direction gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.bend.y.direction int 1 run scoreboard players get #active_pointer.bend.y.direction gm4_gv_component

# create pointer
execute unless score $pointer.identifier gm4_gv_component matches -1 run function gm4_garden_variety:generation/pointer/create_pointer
