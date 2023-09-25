
scoreboard players set #line_generator.facing_direction gm4_gv_component 0
execute if score #line_generator.x_rotation gm4_gv_component matches 13500..18000 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component 2
execute if score #line_generator.x_rotation gm4_gv_component matches -18000..-13500 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component 2
execute if score #line_generator.x_rotation gm4_gv_component matches -13500..-4500 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component -2
execute if score #line_generator.x_rotation gm4_gv_component matches -4500..4500 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component 3
execute if score #line_generator.x_rotation gm4_gv_component matches 4500..13500 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component -3
execute if score #line_generator.y_rotation gm4_gv_component matches ..-3000 store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component 1
execute if score #line_generator.y_rotation gm4_gv_component matches 3000.. store result score #line_generator.facing_direction.absolute gm4_gv_component run scoreboard players set #line_generator.facing_direction gm4_gv_component -1
execute if score #line_generator.facing_direction.absolute gm4_gv_component matches ..-1 run scoreboard players operation #line_generator.facing_direction.absolute gm4_gv_component *= #-1 gm4_garden_variety
