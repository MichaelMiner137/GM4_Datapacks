
data modify storage gm4_garden_variety:debug path append value "|"

# get current pattern value, facing direction, and set stored placeholder data
execute if score $placeholder.patterns gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/get_pattern_value
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/get_facing_direction
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/set_stored_data

# build segment
scoreboard players operation #line_generator.segments_left gm4_gv_component = #line_generator.segments_set gm4_gv_component 
execute at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment

# modify rotation and update
execute unless score $y.curl.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-curl
execute unless score $y.bend.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-bend
execute unless score $x.curl.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-curl
execute unless score $x.bend.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-bend
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
