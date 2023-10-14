
data remove storage gm4_garden_variety:new placeholder
execute store result storage gm4_garden_variety:new placeholder.identifier int 1 run scoreboard players get $placeholder.identifier gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.seed int 1 run scoreboard players get $sub_seed gm4_gv_generation
execute store result storage gm4_garden_variety:new placeholder.composite_group int 1 run scoreboard players get $placeholder.composite_group gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.pointer_id int 1 run scoreboard players get @s gm4_gv_pointer
