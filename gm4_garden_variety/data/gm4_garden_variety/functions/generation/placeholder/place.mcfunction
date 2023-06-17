
# spawn marker and store data
summon marker ~ ~ ~ {Rotation:[0F,-90F],Tags:["gm4_gv_generation_placeholder","gm4_gv_new"],data:{gm4_garden_variety:{}}}
execute as @e[type=marker,tag=gm4_gv_generation_placeholder,tag=gm4_gv_new] at @s run function gm4_garden_variety:generation/placeholder/new_placeholder

# set block
fill ~ ~ ~ ~ ~ ~ repeating_command_block{Command:"function gm4_garden_variety:generation/placeholder/block/initial"} replace #gm4_garden_variety:replaceable
execute if score #builder.facing.abs gm4_gv_component matches 1 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=up]{auto:1b,Command:"function gm4_garden_variety:generation/placeholder/block/directional"} replace repeating_command_block{Command:"function gm4_garden_variety:generation/placeholder/block/initial"}
execute if score #builder.facing.abs gm4_gv_component matches 2 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=down]{auto:1b,Command:"function gm4_garden_variety:generation/placeholder/block/directional"} replace repeating_command_block{Command:"function gm4_garden_variety:generation/placeholder/block/initial"}
execute if score #builder.facing.abs gm4_gv_component matches 3 run fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=north]{auto:1b,Command:"function gm4_garden_variety:generation/placeholder/block/directional"} replace repeating_command_block{Command:"function gm4_garden_variety:generation/placeholder/block/initial"}
fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=up]{auto:1b,Command:"function gm4_garden_variety:generation/placeholder/block/unresolved"} replace repeating_command_block{Command:"function gm4_garden_variety:generation/placeholder/block/initial"}
