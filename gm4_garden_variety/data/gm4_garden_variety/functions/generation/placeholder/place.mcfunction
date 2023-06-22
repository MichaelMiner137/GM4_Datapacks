
# spawn marker and store data
summon marker ~ ~ ~ {Rotation:[0F,-90F],Tags:["gm4_gv_generation_placeholder","gm4_gv_new"],data:{gm4_garden_variety:{}}}
execute as @e[type=marker,tag=gm4_gv_generation_placeholder,tag=gm4_gv_new] at @s run function gm4_garden_variety:generation/placeholder/new_placeholder

# set block
fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=up]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
