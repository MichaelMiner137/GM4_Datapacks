
# set direction
execute if score $y.bend.value gm4_gv_component matches ..-1 run scoreboard players set #line_generator.y_bend_direction gm4_gv_component -1
execute if score $y.bend.value gm4_gv_component matches 0.. run scoreboard players set #line_generator.y_bend_direction gm4_gv_component 1

# correct sign
execute if score $y.bend.value gm4_gv_component matches ..-1 run scoreboard players operation $y.bend.value gm4_gv_component *= #-1 gm4_garden_variety
