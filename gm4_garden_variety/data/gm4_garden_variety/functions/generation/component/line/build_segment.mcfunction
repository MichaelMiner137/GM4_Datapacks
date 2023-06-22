
# fill placeholder blocks
execute if score $placeholder.thickness gm4_gv_component matches 1..4 run function gm4_garden_variety:generation/component/line/placeholder/fill_blocks

# move forward
execute unless score $placeholder.quality gm4_gv_component matches 2..6 run tp @s ^ ^ ^1 ~ ~
execute if score $placeholder.quality gm4_gv_component matches 2 run tp @s ^ ^ ^0.5 ~ ~
execute if score $placeholder.quality gm4_gv_component matches 3 run tp @s ^ ^ ^0.333 ~ ~
execute if score $placeholder.quality gm4_gv_component matches 4 run tp @s ^ ^ ^0.2 ~ ~
execute if score $placeholder.quality gm4_gv_component matches 5 run tp @s ^ ^ ^0.1 ~ ~
execute if score $placeholder.quality gm4_gv_component matches 6 run tp @s ^ ^ ^0.05 ~ ~

# loop
scoreboard players remove #builder.segment.left gm4_gv_component 1
execute if score #builder.segment.left gm4_gv_component matches 1.. at @s run function gm4_garden_variety:generation/component/line/build_segment
