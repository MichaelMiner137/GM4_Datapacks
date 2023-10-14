
# check waterlogged
data modify storage gm4_garden_variety:new placeholder.waterlogged set value false
execute if block ~ ~ ~ water run data modify storage gm4_garden_variety:new placeholder.waterlogged set value true
execute if block ~ ~ ~ #gm4_garden_variety:replaceable[waterlogged=true] run data modify storage gm4_garden_variety:new placeholder.waterlogged set value true

# spawn marker and place block
$summon marker ~ ~ ~ {Rotation:[0F,-90F],Tags:["gm4_gv_generation_placeholder","gm4_gv_new"],data:{gm4_garden_variety:{placeholder:$(placeholder_data)}}}
$fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=$(direction)]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
