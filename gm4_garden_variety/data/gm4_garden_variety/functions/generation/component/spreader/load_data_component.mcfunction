
##### LOAD #####

# inherit from pointer
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer
execute store result score #spreader_generator.x_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.x
execute store result score #spreader_generator.y_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.y

# separation
scoreboard players set $primary.separation gm4_gv_component 2
execute if data storage gm4_garden_variety:reference component.primary{separation:"manual"} run scoreboard players set $primary.separation gm4_gv_component 1
execute if data storage gm4_garden_variety:reference component.primary{separation:"alternate"} run scoreboard players set $primary.separation gm4_gv_component 2
execute if data storage gm4_garden_variety:reference component.primary{separation:"staircase"} run scoreboard players set $primary.separation gm4_gv_component 3



###### INTERPRET #####

# initial component rotation
scoreboard players operation #spreader_generator.initial_spreader_rotation.x gm4_gv_component = #spreader_generator.x_rotation gm4_gv_component
scoreboard players operation #spreader_generator.initial_spreader_rotation.y gm4_gv_component = #spreader_generator.y_rotation gm4_gv_component

# load layers
data modify storage gm4_garden_variety:process layers set from storage gm4_garden_variety:reference component.layers
execute store result score $layers gm4_gv_component run data get storage gm4_garden_variety:reference component.layers
