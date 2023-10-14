
# pattern value
scoreboard players operation #line_generator.pattern_index gm4_gv_component = #line_generator.length_current gm4_gv_component
scoreboard players operation #line_generator.pattern_index gm4_gv_component %= $placeholder.patterns gm4_gv_component
execute store result storage gm4_garden_variety:macro calculate_pattern.index int 1 run scoreboard players get #line_generator.pattern_index gm4_gv_component
execute if score $placeholder.patterns gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/placeholder/m-calculate_pattern with storage gm4_garden_variety:macro calculate_pattern

# get facing direction
scoreboard players set #line_generator.facing_direction gm4_gv_component 0
execute if score #line_generator.x_rotation gm4_gv_component matches 13500..18000 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component 2
execute if score #line_generator.x_rotation gm4_gv_component matches -18000..-13500 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component 2
execute if score #line_generator.x_rotation gm4_gv_component matches -13500..-4500 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component -2
execute if score #line_generator.x_rotation gm4_gv_component matches -4500..4500 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component 3
execute if score #line_generator.x_rotation gm4_gv_component matches 4500..13500 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component -3
execute if score #line_generator.y_rotation gm4_gv_component matches ..-3000 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component 1
execute if score #line_generator.y_rotation gm4_gv_component matches 3000.. store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component -1
execute if score #line_generator.facing_direction.absolute gm4_gv_component matches ..-1 run scoreboard players operation #line_generator.facing_direction.absolute gm4_gv_component *= #-1 gm4_garden_variety

# store for new placeholder
data remove storage gm4_garden_variety:new placeholder
execute store result storage gm4_garden_variety:new placeholder.identifier int 1 run scoreboard players get $placeholder.identifier gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.seed int 1 run scoreboard players get $sub_seed gm4_gv_generation
execute store result storage gm4_garden_variety:new placeholder.length int 1 run scoreboard players get $length.value gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.length_current int 1 run scoreboard players get #line_generator.length_current gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.length_left int 1 run scoreboard players get #line_generator.length_left gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.current_pattern int 1 run scoreboard players get #line_generator.current_pattern gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.facing int 1 run scoreboard players get #line_generator.facing_direction gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.axis int 1 run scoreboard players get #line_generator.facing_direction.absolute gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.composite_group int 1 run scoreboard players get $placeholder.composite_group gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.pointer_id int 1 run scoreboard players get @s gm4_gv_pointer
