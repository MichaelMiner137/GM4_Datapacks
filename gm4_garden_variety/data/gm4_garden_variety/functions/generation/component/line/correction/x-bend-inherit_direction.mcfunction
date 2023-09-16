
# set direction
execute if score #active_pointer.x.bend.direction gm4_gv_component matches ..-1 run scoreboard players set #line_generator.x_bend_direction gm4_gv_component -1
execute if score #active_pointer.x.bend.direction gm4_gv_component matches 1.. run scoreboard players set #line_generator.x_bend_direction gm4_gv_component 1

# correct sign
execute if score $x.bend.value gm4_gv_component matches ..-1 run scoreboard players operation $x.bend.value gm4_gv_component *= #-1 gm4_garden_variety
