
data modify storage gm4_garden_variety:debug path append value "|"

# get current pattern value, facing direction, and set stored placeholder data
execute if score $placeholder.patterns gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/get_pattern_value
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/get_facing_direction
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/set_stored_data

# build segment
### FUTURE MACRO ###
scoreboard players operation #line_generator.segments_left gm4_gv_component = #line_generator.segments_set gm4_gv_component 
execute unless score $placeholder.quality gm4_gv_component matches 2..6 at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment/quality_1
execute if score $placeholder.quality gm4_gv_component matches 2 at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment/quality_2
execute if score $placeholder.quality gm4_gv_component matches 3 at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment/quality_3
execute if score $placeholder.quality gm4_gv_component matches 4 at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment/quality_4
execute if score $placeholder.quality gm4_gv_component matches 5 at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment/quality_5
execute if score $placeholder.quality gm4_gv_component matches 6 at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment/quality_6

# modify rotation and update
execute unless score $curl.y.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-curl
execute unless score $bend.y.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-bend
execute unless score $curl.x.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-curl
execute unless score $bend.x.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-bend
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #line_generator.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #line_generator.y_rotation gm4_gv_component

# pointer
execute if score $pointer.begin.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/begin/check
execute if score $pointer.middle.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/middle/check
execute if score $pointer.end.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/end/check
execute if score $pointer.fill.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/fill/check
execute if score $pointer.pattern.identifiers gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/pattern/check
execute if score $pointer.random.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/random/check

# counters and loop
scoreboard players remove #line_generator.length_left gm4_gv_component 1
scoreboard players add #line_generator.length_current gm4_gv_component 1
execute if score #line_generator.length_left gm4_gv_component matches 1.. at @s if block ~ ~ ~ #gm4_garden_variety:passthrough rotated as @s run function gm4_garden_variety:generation/component/line/build_block
