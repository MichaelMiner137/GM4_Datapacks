
# fill placeholder blocks
execute if score $placeholder.thickness gm4_gv_component matches 1..4 run function gm4_garden_variety:generation/component/line/placeholder/place_blocks

### FUTURE MACRO ###
# move forward
execute unless score $placeholder.quality gm4_gv_component matches 4..6 run function gm4_garden_variety:generation/component/line/segment_move/quality_1-3
execute if score $placeholder.quality gm4_gv_component matches 4..6 run function gm4_garden_variety:generation/component/line/segment_move/quality_4-6

# loop
scoreboard players remove #line_generator.segments_left gm4_gv_component 1
execute if score #line_generator.segments_left gm4_gv_component matches 1.. at @s run function gm4_garden_variety:generation/component/line/build_segment
