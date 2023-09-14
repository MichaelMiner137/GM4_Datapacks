
# spawn marker and store data
summon marker ~ ~ ~ {Rotation:[0F,-90F],Tags:["gm4_gv_generation_placeholder","gm4_gv_new"],data:{gm4_garden_variety:{}}}
execute as @e[type=marker,tag=gm4_gv_generation_placeholder,tag=gm4_gv_new] at @s run function gm4_garden_variety:generation/placeholder/new_placeholder

# set block
execute unless score $placeholder.composite_group gm4_gv_component matches 2..6 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=up]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
execute if score $placeholder.composite_group gm4_gv_component matches 2 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=down]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
execute if score $placeholder.composite_group gm4_gv_component matches 3 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=north]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
execute if score $placeholder.composite_group gm4_gv_component matches 4 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=south]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
execute if score $placeholder.composite_group gm4_gv_component matches 5 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=east]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
execute if score $placeholder.composite_group gm4_gv_component matches 6 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=west]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
