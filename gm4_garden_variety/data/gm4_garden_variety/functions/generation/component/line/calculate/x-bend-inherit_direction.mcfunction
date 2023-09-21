
# set direction
execute if score #active_pointer.bend.x.direction gm4_gv_component matches ..-1 run scoreboard players set #line_generator.x_bend_direction gm4_gv_component -1
execute if score #active_pointer.bend.x.direction gm4_gv_component matches 1.. run scoreboard players set #line_generator.x_bend_direction gm4_gv_component 1

# correct sign
execute if score $bend.x.value gm4_gv_component matches ..-1 run scoreboard players operation $bend.x.value gm4_gv_component *= #-1 gm4_garden_variety
