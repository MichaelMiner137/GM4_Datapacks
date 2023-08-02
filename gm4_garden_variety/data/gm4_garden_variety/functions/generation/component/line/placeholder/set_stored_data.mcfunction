
data remove storage gm4_garden_variety:new placeholder
execute store result storage gm4_garden_variety:new placeholder.identifier int 1 run scoreboard players get $placeholder.identifier gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.seed int 1 run scoreboard players get $sub_seed gm4_gv_generation
execute store result storage gm4_garden_variety:new placeholder.current_length int 1 run scoreboard players get #line_marker.length_left gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.length_left int 1 run scoreboard players get #line_marker.length_left gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.current_pattern int 1 run scoreboard players get #line_marker.placeholder.current_pattern gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.facing int 1 run scoreboard players get #line_marker.facing_direction gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.axis int 1 run scoreboard players get #line_marker.facing_direction.absolute gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.group int 1 run scoreboard players get $placeholder.group gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.pointer_id int 1 run scoreboard players get @s gm4_gv_pointer
