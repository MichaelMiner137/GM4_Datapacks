
# get current pattern value, facing direction, and set stored placeholder data
execute if score $placeholder.patterns gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/pattern/current_value
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/get_facing_direction
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/set_stored_data

# build segment
scoreboard players operation #line_marker.segments_left gm4_gv_component = #line_marker.segments_set gm4_gv_component 
execute at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment

# modify rotation and update
execute unless score $y.curl.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-curl
execute unless score $y.bend.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-bend
execute unless score $x.curl.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-curl
execute unless score $x.bend.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-bend
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #line_marker.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #line_marker.y_rotation gm4_gv_component

# debug
#tellraw @p [{"score":{"name":"$pointer.overriden","objective":"gm4_gv_component"}},"  >  ",{"score":{"name":"#line_marker.length_left","objective":"gm4_gv_component"}}," = ",{"score":{"name":"$pointer.location","objective":"gm4_gv_component"}}]
#tellraw @p [{"score":{"name":"#line_marker.length_current","objective":"gm4_gv_component"}}," >     X: ",{"score":{"name":"$x.bend.value","objective":"gm4_gv_component"}}," += ",{"score":{"name":"#line_marker.x_rotation","objective":"gm4_gv_component"}},"     Y: ",{"score":{"name":"$y.bend.value","objective":"gm4_gv_component"}}," += ",{"score":{"name":"#line_marker.y_rotation","objective":"gm4_gv_component"}}]

# pointer
execute if score $pointer.begin.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/begin/check
execute if score $pointer.middle.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/middle/check
execute if score $pointer.end.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/end/check
execute if score $pointer.fill.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/fill/check
execute if score $pointer.pattern.identifiers gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/pattern/check

# counters and loop
scoreboard players remove #line_marker.length_left gm4_gv_component 1
scoreboard players add #line_marker.length_current gm4_gv_component 1
execute if score #line_marker.length_left gm4_gv_component matches 1.. at @s if block ~ ~ ~ #gm4_garden_variety:passthrough rotated as @s run function gm4_garden_variety:generation/component/line/build_block
