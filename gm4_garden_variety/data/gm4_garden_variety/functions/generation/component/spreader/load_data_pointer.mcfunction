
###### INTERPRET #####

# get offset
execute if data storage gm4_garden_variety:reference layer.pointers.offset.x.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointers.offset.x.min gm4_gv_component",input_max:"$pointers.offset.x.max gm4_gv_component",output:"$pointers.offset.x gm4_gv_component"}
execute if data storage gm4_garden_variety:reference layer.pointers.offset.y.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointers.offset.y.min gm4_gv_component",input_max:"$pointers.offset.y.max gm4_gv_component",output:"$pointers.offset.y gm4_gv_component"}

# store pointer rotation
scoreboard players operation #spreader_generator.pointer_rotation.x gm4_gv_component = #spreader_generator.x_rotation gm4_gv_component
scoreboard players operation #spreader_generator.pointer_rotation.y gm4_gv_component = #spreader_generator.y_rotation gm4_gv_component

# offset rotation
scoreboard players operation #spreader_generator.pointer_rotation.x gm4_gv_component += $pointers.offset.x gm4_gv_component
scoreboard players operation #spreader_generator.pointer_rotation.y gm4_gv_component += $pointers.offset.y gm4_gv_component
