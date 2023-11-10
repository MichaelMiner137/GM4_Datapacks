
# fill placeholder blocks
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/place_block with storage gm4_garden_variety:macro place_block

# loop
scoreboard players remove #line_generator.segments_left gm4_gv_component 1
$execute if score #line_generator.segments_left gm4_gv_component matches 1.. positioned ^ ^ ^$(increment) run function gm4_garden_variety:generation/component/line/build_segment {increment:$(increment)}
