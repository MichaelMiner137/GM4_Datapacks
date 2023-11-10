
##### LOAD #####

# inherit from pointer
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer
execute store result score #disc_generator.x_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.x
execute store result score #disc_generator.y_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.y
execute store result score #active_pointer.counted.total gm4_gv_component run data get storage gm4_garden_variety:reference pointer.counted.total
execute store result score #active_pointer.counted.fill gm4_gv_component run data get storage gm4_garden_variety:reference pointer.counted.fill
execute store result score #active_pointer.counted.pattern gm4_gv_component run data get storage gm4_garden_variety:reference pointer.counted.pattern
execute store result score #active_pointer.counted.random gm4_gv_component run data get storage gm4_garden_variety:reference pointer.counted.random
# general
execute store result score $general.length.initial gm4_gv_component run data get storage gm4_garden_variety:reference component.general.length.initial
execute if data storage gm4_garden_variety:reference component.general.length.initial.min store result score $general.length.initial.min gm4_gv_component run data get storage gm4_garden_variety:reference component.general.length.initial.min
execute if data storage gm4_garden_variety:reference component.general.length.initial.max store result score $general.length.initial.max gm4_gv_component run data get storage gm4_garden_variety:reference component.general.length.initial.max
execute store result score $general.length.increase gm4_gv_component run data get storage gm4_garden_variety:reference component.general.length.increase
execute store result score $general.length.decrease gm4_gv_component run data get storage gm4_garden_variety:reference component.general.length.decrease
execute store result score $general.length.minimum gm4_gv_component run data get storage gm4_garden_variety:reference component.general.length.minimum
execute store result score $general.draws gm4_gv_component run data get storage gm4_garden_variety:reference component.general.draws
# pattern
execute store result score $pattern.entries gm4_gv_component run data get storage gm4_garden_variety:reference component.pattern.list
# placeholder
execute store result score $placeholder.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.identifier
execute store result score $placeholder.composite_group gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.composite_group
execute store result score $placeholder.generation_speed gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.generation_speed



###### INTERPRET #####

# radius source
scoreboard players set $pattern.source_value gm4_gv_component 1
execute if data storage gm4_garden_variety:reference component.pattern{source:"pointer/total"} run scoreboard players operation $pattern.source_value gm4_gv_component = #active_pointer.counted.total gm4_gv_component
execute if data storage gm4_garden_variety:reference component.pattern{source:"pointer/fill"} run scoreboard players operation $pattern.source_value gm4_gv_component = #active_pointer.counted.fill gm4_gv_component
execute if data storage gm4_garden_variety:reference component.pattern{source:"pointer/pattern"} run scoreboard players operation $pattern.source_value gm4_gv_component = #active_pointer.counted.pattern gm4_gv_component
execute if data storage gm4_garden_variety:reference component.pattern{source:"pointer/random"} run scoreboard players operation $pattern.source_value gm4_gv_component = #active_pointer.counted.random gm4_gv_component

# calculate ranges
execute if data storage gm4_garden_variety:reference component.general.length.initial.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$general.length.initial.min gm4_gv_component",input_max:"$general.length.initial.max gm4_gv_component",output:"$general.length.initial gm4_gv_component"}

# length
scoreboard players operation #disc_generator.radius gm4_gv_component = $general.length.initial gm4_gv_component

# [macro] pattern
scoreboard players operation #disc_generator.pattern_index gm4_gv_component = $pattern.source_value gm4_gv_component
scoreboard players operation #disc_generator.pattern_index gm4_gv_component %= $pattern.entries gm4_gv_component
scoreboard players remove #disc_generator.pattern_index gm4_gv_component 1
data modify storage gm4_garden_variety:macro pattern set value {storage:"gm4_garden_variety:reference component.pattern.list",output:"#disc_generator.pattern_value gm4_gv_component"}
execute store result storage gm4_garden_variety:macro pattern.index int 1 run scoreboard players get #disc_generator.pattern_index gm4_gv_component
function gm4_garden_variety:utility/find_index_value with storage gm4_garden_variety:macro pattern
scoreboard players operation #disc_generator.radius gm4_gv_component += #disc_generator.pattern_value gm4_gv_component

# [macro] placeholder set block
data remove storage gm4_garden_variety:macro place_placeholder
execute unless score $placeholder.composite_group gm4_gv_component matches 2..6 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "up"
execute if score $placeholder.composite_group gm4_gv_component matches 2 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "down"
execute if score $placeholder.composite_group gm4_gv_component matches 3 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "north"
execute if score $placeholder.composite_group gm4_gv_component matches 4 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "south"
execute if score $placeholder.composite_group gm4_gv_component matches 5 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "east"
execute if score $placeholder.composite_group gm4_gv_component matches 6 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "west"

# increase / decrease radius
scoreboard players operation #disc_generator.radius.increase gm4_gv_component = $pattern.source_value gm4_gv_component
scoreboard players operation #disc_generator.radius.increase gm4_gv_component /= $general.length.increase gm4_gv_component
execute if score $general.length.increase gm4_gv_component matches 1.. run scoreboard players operation #disc_generator.radius gm4_gv_component += #disc_generator.radius.increase gm4_gv_component
scoreboard players operation #disc_generator.radius.decrease gm4_gv_component = $pattern.source_value gm4_gv_component
scoreboard players operation #disc_generator.radius.decrease gm4_gv_component /= $general.length.decrease gm4_gv_component
execute if score $general.length.decrease gm4_gv_component matches 1.. run scoreboard players operation #disc_generator.radius gm4_gv_component -= #disc_generator.radius.decrease gm4_gv_component

# minimum radius
execute if score #disc_generator.radius gm4_gv_component < $general.length.minimum gm4_gv_component run scoreboard players operation #disc_generator.radius gm4_gv_component = $general.length.minimum gm4_gv_component

# get draws
scoreboard players operation #disc_generator.draws gm4_gv_component = #disc_generator.radius gm4_gv_component
scoreboard players operation #disc_generator.draws gm4_gv_component *= #6 gm4_garden_variety
execute if score #disc_generator.radius gm4_gv_component matches 1 run scoreboard players set #disc_generator.draws gm4_gv_component 1
execute if score #disc_generator.radius gm4_gv_component matches 2 run scoreboard players set #disc_generator.draws gm4_gv_component 8
execute if score #disc_generator.radius gm4_gv_component matches 3 run scoreboard players set #disc_generator.draws gm4_gv_component 12
execute if score #disc_generator.radius gm4_gv_component matches 4 run scoreboard players set #disc_generator.draws gm4_gv_component 17
execute if score #disc_generator.radius gm4_gv_component matches 5 run scoreboard players set #disc_generator.draws gm4_gv_component 28
execute if score #disc_generator.radius gm4_gv_component matches 6 run scoreboard players set #disc_generator.draws gm4_gv_component 36
execute if score #disc_generator.radius gm4_gv_component matches 7 run scoreboard players set #disc_generator.draws gm4_gv_component 38
execute if score #disc_generator.radius gm4_gv_component matches 8 run scoreboard players set #disc_generator.draws gm4_gv_component 44
execute if score $general.draws gm4_gv_component matches 1.. run scoreboard players operation #disc_generator.draws gm4_gv_component = $general.draws gm4_gv_component

# rotation degrees
scoreboard players set #disc_generator.rotation_degrees gm4_gv_component 36000
scoreboard players operation #disc_generator.rotation_degrees gm4_gv_component /= #disc_generator.draws gm4_gv_component

# performance skip gap
scoreboard players operation #rotation_calculator.skip_gap.add_factor1 gm4_gv_component = #disc_generator.radius gm4_gv_component
scoreboard players operation #rotation_calculator.skip_gap.add_factor1 gm4_gv_component /= #2 gm4_garden_variety
scoreboard players operation #rotation_calculator.skip_gap.add_factor2 gm4_gv_component = #disc_generator.radius gm4_gv_component
scoreboard players operation #rotation_calculator.skip_gap.add_factor2 gm4_gv_component /= #5 gm4_garden_variety

data modify storage gm4_garden_variety:debug path append value "r"
execute store result storage gm4_garden_variety:debug hold int 1 run scoreboard players get #disc_generator.radius gm4_gv_component
data modify storage gm4_garden_variety:debug path append string storage gm4_garden_variety:debug hold
data modify storage gm4_garden_variety:debug path append value " "

