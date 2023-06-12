
# create placeholder (align)
setblock ~ ~ ~ oak_wood
#particle happy_villager

# move forward
tp @s ^ ^ ^0.1 ~ ~

# loop
scoreboard players remove #builder.segment_left gm4_gv_component 1
execute if score #builder.segment_left gm4_gv_component matches 1.. at @s run function gm4_garden_variety:generation/component/trunk/builder/build_segment
