
###### INTERPRET #####

# get offset
execute if data storage gm4_garden_variety:reference layer.pointers.offset.x.max run function gm4_garden_variety:generation/component/spreader/calculate/pointers-offset-x
execute if data storage gm4_garden_variety:reference layer.pointers.offset.y.max run function gm4_garden_variety:generation/component/spreader/calculate/pointers-offset-y

# store pointer rotation
scoreboard players operation #spreader_generator.pointer_rotation.x gm4_gv_component = #spreader_generator.x_rotation gm4_gv_component
scoreboard players operation #spreader_generator.pointer_rotation.y gm4_gv_component = #spreader_generator.y_rotation gm4_gv_component

# offset rotation
scoreboard players operation #spreader_generator.pointer_rotation.x gm4_gv_component += $pointers.offset.x gm4_gv_component
scoreboard players operation #spreader_generator.pointer_rotation.y gm4_gv_component += $pointers.offset.y gm4_gv_component
