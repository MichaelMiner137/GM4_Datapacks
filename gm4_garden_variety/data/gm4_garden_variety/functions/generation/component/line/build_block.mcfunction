
data modify storage gm4_garden_variety:debug path append value "|"

# set new placeholder data
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/new_data

# build segment and move forward
scoreboard players operation #line_generator.segments_left gm4_gv_component = $length.segments gm4_gv_component
execute at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment with storage gm4_garden_variety:macro build_segment
execute at @s rotated as @s run tp @s ^ ^ ^1 ~ ~

# modify rotation
execute unless score $curl.y.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-curl
execute unless score $bend.y.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-bend
execute unless score $curl.x.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-curl
execute unless score $bend.x.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-bend

# pointer
execute if score $pointer.begin.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/begin/check
execute if score $pointer.middle.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/middle/check
execute if score $pointer.end.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/end/check
execute if score $pointer.fill.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/fill/check
execute if score $pointer.pattern.identifiers gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/pattern/check
execute if score $pointer.random.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/random/check

# cushion
$execute if score $length.cushion gm4_gv_component matches 1.. unless block ^ ^ ^$(cushion) #gm4_garden_variety:passthrough run return 0

# counters and loop
scoreboard players remove #line_generator.length_left gm4_gv_component 1
scoreboard players add #line_generator.length_current gm4_gv_component 1
$execute if score #line_generator.length_left gm4_gv_component matches 1.. at @s if block ~ ~ ~ #gm4_garden_variety:passthrough rotated as @s run function gm4_garden_variety:generation/component/line/build_block {cushion:$(cushion)}
