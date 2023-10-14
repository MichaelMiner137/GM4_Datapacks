
# new data
function gm4_garden_variety:generation/placeholder/placement/new_data

# spawn marker and place block
$execute if score $placeholder.composite_enabled gm4_gv_component matches 1 run summon marker ~ ~ ~ {Rotation:[0F,-90F],Tags:["gm4_gv_generation_placeholder","gm4_gv_placeholder_composite_enabled"],data:{gm4_garden_variety:{placeholder:$(placeholder_data)}}}
$execute unless score $placeholder.composite_enabled gm4_gv_component matches 1 run summon marker ~ ~ ~ {Rotation:[0F,-90F],Tags:["gm4_gv_generation_placeholder"],data:{gm4_garden_variety:{placeholder:$(placeholder_data)}}}
$fill ~ ~ ~ ~ ~ ~ repeating_command_block[facing=$(direction)]{auto:true,Command:"function gm4_garden_variety:generation/placeholder/failed"} replace #gm4_garden_variety:replaceable
