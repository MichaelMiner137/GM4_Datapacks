
# set rotation
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #line_generator.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #line_generator.y_rotation gm4_gv_component

# reset counters
scoreboard players reset #pointer_counter.begin gm4_gv_component
scoreboard players reset #pointer_counter.middle gm4_gv_component
scoreboard players reset #pointer_counter.end gm4_gv_component
scoreboard players reset #pointer_counter.fill gm4_gv_component
scoreboard players reset #pointer_counter.pattern gm4_gv_component
scoreboard players reset #pointer_counter.random gm4_gv_component

# build
scoreboard players operation #line_generator.length_left gm4_gv_component = $length.value gm4_gv_component
scoreboard players set #line_generator.length_current gm4_gv_component 1
execute at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_block with storage gm4_garden_variety:macro build_block

# clean up
kill @s
