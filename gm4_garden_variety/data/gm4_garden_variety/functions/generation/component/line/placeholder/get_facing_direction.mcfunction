
scoreboard players set #line_marker.facing_direction gm4_gv_component 0
execute if score #line_marker.x_rotation gm4_gv_component matches 135..180 store result score #line_marker.facing_direction.absolute gm4_gv_component run scoreboard players set #line_marker.facing_direction gm4_gv_component 2
execute if score #line_marker.x_rotation gm4_gv_component matches -180..-135 store result score #line_marker.facing_direction.absolute gm4_gv_component run scoreboard players set #line_marker.facing_direction gm4_gv_component 2
execute if score #line_marker.x_rotation gm4_gv_component matches -135..-45 store result score #line_marker.facing_direction.absolute gm4_gv_component run scoreboard players set #line_marker.facing_direction gm4_gv_component -2
execute if score #line_marker.x_rotation gm4_gv_component matches -45..45 store result score #line_marker.facing_direction.absolute gm4_gv_component run scoreboard players set #line_marker.facing_direction gm4_gv_component 3
execute if score #line_marker.x_rotation gm4_gv_component matches 45..135 store result score #line_marker.facing_direction.absolute gm4_gv_component run scoreboard players set #line_marker.facing_direction gm4_gv_component -3
execute if score #line_marker.y_rotation gm4_gv_component matches ..-30 store result score #line_marker.facing_direction.absolute gm4_gv_component run scoreboard players set #line_marker.facing_direction gm4_gv_component 1
execute if score #line_marker.y_rotation gm4_gv_component matches 30.. store result score #line_marker.facing_direction.absolute gm4_gv_component run scoreboard players set #line_marker.facing_direction gm4_gv_component -1
execute if score #line_marker.facing_direction.absolute gm4_gv_component matches ..-1 run scoreboard players operation #line_marker.facing_direction.absolute gm4_gv_component *= #-1 gm4_garden_variety
