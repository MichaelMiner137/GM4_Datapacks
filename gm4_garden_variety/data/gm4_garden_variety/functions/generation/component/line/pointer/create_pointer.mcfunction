
execute store result storage gm4_garden_variety:new pointer.identifier int 1 run scoreboard players get #new_pointer.identifier gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.rotation.x int 1 run scoreboard players get #line_generator.x_rotation gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.rotation.y int 1 run scoreboard players get #line_generator.y_rotation gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.bend.x.direction int 1 run scoreboard players get #line_generator.x_bend_direction gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.bend.y.direction int 1 run scoreboard players get #line_generator.y_bend_direction gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.counted.total int 1 run scoreboard players get #pointer_counter.total gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.counted.begin int 1 run scoreboard players get #pointer_counter.begin gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.counted.middle int 1 run scoreboard players get #pointer_counter.middle gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.counted.end int 1 run scoreboard players get #pointer_counter.end gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.counted.fill int 1 run scoreboard players get #pointer_counter.fill gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.counted.pattern int 1 run scoreboard players get #pointer_counter.pattern gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.counted.random int 1 run scoreboard players get #pointer_counter.random gm4_gv_component

function gm4_garden_variety:generation/pointer/create_pointer
