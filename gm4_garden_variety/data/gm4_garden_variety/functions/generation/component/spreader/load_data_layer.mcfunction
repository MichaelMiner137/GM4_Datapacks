
# load layer
data modify storage gm4_garden_variety:reference layer set from storage gm4_garden_variety:process layers[0]
data remove storage gm4_garden_variety:process layers[0]



##### LOAD #####

# offset
scoreboard players set $offset.span gm4_gv_component 36000
execute store result score $offset.relative gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.relative
execute store result score $offset.x gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.x 100
execute store result score $offset.y gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.y 100
execute if data storage gm4_garden_variety:reference layer.offset.span store result score $offset.span gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.span 100
execute if data storage gm4_garden_variety:reference layer.offset.x.min store result score $offset.x.min gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.x.min 100
execute if data storage gm4_garden_variety:reference layer.offset.x.max store result score $offset.x.max gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.x.max 100
execute if data storage gm4_garden_variety:reference layer.offset.y.min store result score $offset.y.min gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.y.min 100
execute if data storage gm4_garden_variety:reference layer.offset.y.max store result score $offset.y.max gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.y.max 100
execute if data storage gm4_garden_variety:reference layer.offset.span.min store result score $offset.span.min gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.span.min 100
execute if data storage gm4_garden_variety:reference layer.offset.span.max store result score $offset.span.max gm4_gv_component run data get storage gm4_garden_variety:reference layer.offset.span.max 100
# pointers
execute store result score $pointers.identifier gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.identifier
execute store result score $pointers.amount gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.amount
execute if data storage gm4_garden_variety:reference layer.pointers.amount.min store result score $pointers.amount.min gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.amount.min
execute if data storage gm4_garden_variety:reference layer.pointers.amount.max store result score $pointers.amount.max gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.amount.max
# pointer offsets
execute store result score $pointers.offset.x gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.offset.x 100
execute store result score $pointers.offset.y gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.offset.y 100
execute if data storage gm4_garden_variety:reference layer.pointers.offset.x.min store result score $pointers.offset.x.min gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.offset.x.min 100
execute if data storage gm4_garden_variety:reference layer.pointers.offset.x.max store result score $pointers.offset.x.max gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.offset.x.max 100
execute if data storage gm4_garden_variety:reference layer.pointers.offset.y.min store result score $pointers.offset.y.min gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.offset.y.min 100
execute if data storage gm4_garden_variety:reference layer.pointers.offset.y.max store result score $pointers.offset.y.max gm4_gv_component run data get storage gm4_garden_variety:reference layer.pointers.offset.y.max 100


###### INTERPRET #####

# calculate ranges (combine with the getter)
execute if data storage gm4_garden_variety:reference layer.offset.x.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$offset.x.min gm4_gv_component",input_max:"$offset.x.max gm4_gv_component",output:"$offset.x gm4_gv_component"}
execute if data storage gm4_garden_variety:reference layer.offset.y.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$offset.y.min gm4_gv_component",input_max:"$offset.y.max gm4_gv_component",output:"$offset.y gm4_gv_component"}
execute if data storage gm4_garden_variety:reference layer.offset.span.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$offset.span.min gm4_gv_component",input_max:"$offset.span.max gm4_gv_component",output:"$offset.span gm4_gv_component"}
execute if data storage gm4_garden_variety:reference layer.pointers.amount.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointers.amount.min gm4_gv_component",input_max:"$pointers.amount.max gm4_gv_component",output:"$pointers.amount gm4_gv_component"}

# offset direction
function gm4_garden_variety:generation/component/spreader/calculate/offset-x-direction
function gm4_garden_variety:generation/component/spreader/calculate/offset-y-direction

# get staircase interval
scoreboard players operation #spreader_generator.staircase_interval gm4_gv_component = $offset.span gm4_gv_component
scoreboard players operation #spreader_generator.staircase_interval gm4_gv_component /= $pointers.amount gm4_gv_component
scoreboard players operation #spreader_generator.staircase_interval gm4_gv_component /= $layers gm4_gv_component

# get alternate interval
scoreboard players operation #spreader_generator.alternate_interval gm4_gv_component = $offset.span gm4_gv_component
scoreboard players operation #spreader_generator.alternate_interval gm4_gv_component /= $pointers.amount gm4_gv_component
scoreboard players operation #spreader_generator.alternate_interval gm4_gv_component /= #2 gm4_garden_variety

# set pointer interval rotation
scoreboard players operation #spreader_generator.interval_rotation.x gm4_gv_component = $offset.span gm4_gv_component
scoreboard players operation #spreader_generator.interval_rotation.x gm4_gv_component /= $pointers.amount gm4_gv_component

# reset rotation
execute unless score $offset.relative gm4_gv_component matches 1 run scoreboard players operation #spreader_generator.x_rotation gm4_gv_component = #spreader_generator.initial_spreader_rotation.x gm4_gv_component
execute unless score $offset.relative gm4_gv_component matches 1 run scoreboard players operation #spreader_generator.y_rotation gm4_gv_component = #spreader_generator.initial_spreader_rotation.y gm4_gv_component

# modify x rotation
execute if score $offset.x.direction gm4_gv_component matches 1 run scoreboard players operation #spreader_generator.x_rotation gm4_gv_component += $offset.x gm4_gv_component
execute if score $offset.x.direction gm4_gv_component matches -1 run scoreboard players operation #spreader_generator.x_rotation gm4_gv_component -= $offset.x gm4_gv_component
execute if score $primary.separation gm4_gv_component matches 2 run scoreboard players operation #spreader_generator.x_rotation gm4_gv_component += #spreader_generator.alternate_interval gm4_gv_component
execute if score $primary.separation gm4_gv_component matches 3 run scoreboard players operation #spreader_generator.x_rotation gm4_gv_component += #spreader_generator.staircase_interval gm4_gv_component

# modify y rotation
execute if score $offset.y.direction gm4_gv_component matches 1 run scoreboard players operation #spreader_generator.y_rotation gm4_gv_component += $offset.y gm4_gv_component
execute if score $offset.y.direction gm4_gv_component matches -1 run scoreboard players operation #spreader_generator.y_rotation gm4_gv_component -= $offset.y gm4_gv_component


# initial layer rotation
scoreboard players operation #spreader_generator.initial_layer_rotation.x gm4_gv_component = #spreader_generator.x_rotation gm4_gv_component
scoreboard players operation #spreader_generator.initial_layer_rotation.y gm4_gv_component = #spreader_generator.y_rotation gm4_gv_component

