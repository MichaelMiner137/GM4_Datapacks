
# fill placeholder blocks
function gm4_garden_variety:generation/component/trunk/placeholder/fill_blocks

# move forward
execute unless score $thickness.quality gm4_gv_component matches 2..5 run tp @s ^ ^ ^1 ~ ~
execute if score $thickness.quality gm4_gv_component matches 2 run tp @s ^ ^ ^0.333 ~ ~
execute if score $thickness.quality gm4_gv_component matches 3 run tp @s ^ ^ ^0.2 ~ ~
execute if score $thickness.quality gm4_gv_component matches 4 run tp @s ^ ^ ^0.142857 ~ ~
execute if score $thickness.quality gm4_gv_component matches 5 run tp @s ^ ^ ^0.1 ~ ~

# loop
scoreboard players remove #builder.segment_left gm4_gv_component 1
execute if score #builder.segment_left gm4_gv_component matches 1.. at @s run function gm4_garden_variety:generation/component/trunk/build_segment
