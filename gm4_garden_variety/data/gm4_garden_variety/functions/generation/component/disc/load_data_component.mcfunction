
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
# radius
execute store result score $radius.length gm4_gv_component run data get storage gm4_garden_variety:reference component.radius.length
execute store result score $radius.draws gm4_gv_component run data get storage gm4_garden_variety:reference component.radius.draws
execute if data storage gm4_garden_variety:reference component.radius.length.min store result score $radius.length.min gm4_gv_component run data get storage gm4_garden_variety:reference component.radius.length.min
execute if data storage gm4_garden_variety:reference component.radius.length.max store result score $radius.length.max gm4_gv_component run data get storage gm4_garden_variety:reference component.radius.length.max
execute store result score $radius.patterns gm4_gv_component run data get storage gm4_garden_variety:reference component.radius.pattern
execute store result score $radius.repeat gm4_gv_component run data get storage gm4_garden_variety:reference component.radius.repeat
# placeholder
execute store result score $placeholder.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.identifier
execute store result score $placeholder.composite_group gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.composite_group



###### INTERPRET #####

# rotation degrees
scoreboard players set #disc_generator.rotation_degrees gm4_gv_component 36000
scoreboard players operation #disc_generator.rotation_degrees gm4_gv_component /= $radius.draws gm4_gv_component

# radius source
scoreboard players set $radius.source_value gm4_gv_component 1
execute if data storage gm4_garden_variety:reference component.radius{source:"pointer/total"} run scoreboard players operation $radius.source_value gm4_gv_component = #active_pointer.counted.total gm4_gv_component
execute if data storage gm4_garden_variety:reference component.radius{source:"pointer/fill"} run scoreboard players operation $radius.source_value gm4_gv_component = #active_pointer.counted.fill gm4_gv_component
execute if data storage gm4_garden_variety:reference component.radius{source:"pointer/pattern"} run scoreboard players operation $radius.source_value gm4_gv_component = #active_pointer.counted.pattern gm4_gv_component
execute if data storage gm4_garden_variety:reference component.radius{source:"pointer/random"} run scoreboard players operation $radius.source_value gm4_gv_component = #active_pointer.counted.random gm4_gv_component

# calculate ranges
execute if data storage gm4_garden_variety:reference component.radius.length.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$radius.length.min gm4_gv_component",input_max:"$radius.length.max gm4_gv_component",output:"$radius.length gm4_gv_component"}

# length
scoreboard players operation #disc_generator.radius gm4_gv_component = $radius.length gm4_gv_component

# [macro] pattern
scoreboard players operation #disc_generator.pattern_index gm4_gv_component = $radius.source_value gm4_gv_component
scoreboard players operation #disc_generator.pattern_index gm4_gv_component %= $radius.patterns gm4_gv_component
scoreboard players remove #disc_generator.pattern_index gm4_gv_component 1
data modify storage gm4_garden_variety:macro pattern set value {storage:"gm4_garden_variety:reference component.radius.pattern",output:"#disc_generator.pattern_value gm4_gv_component"}
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

# repeat
scoreboard players operation #disc_generator.pattern_repeat_mod gm4_gv_component = $radius.source_value gm4_gv_component
scoreboard players remove #disc_generator.pattern_repeat_mod gm4_gv_component 1
scoreboard players operation #disc_generator.pattern_repeat_mod gm4_gv_component /= $radius.patterns gm4_gv_component
scoreboard players operation #disc_generator.pattern_repeat_mod gm4_gv_component *= $radius.repeat gm4_gv_component
scoreboard players operation #disc_generator.radius gm4_gv_component += #disc_generator.pattern_repeat_mod gm4_gv_component
