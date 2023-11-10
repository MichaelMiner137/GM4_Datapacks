
# placeholder number
execute store result storage gm4_garden_variety:new placeholder.generation_speed int 1 run scoreboard players get $placeholder.generation_speed gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.number int 1 run scoreboard players get $placeholders gm4_gv_generation

# check waterlogged
data modify storage gm4_garden_variety:new placeholder.waterlogged set value false
execute if block ~ ~ ~ water run data modify storage gm4_garden_variety:new placeholder.waterlogged set value true
execute if block ~ ~ ~ #gm4_garden_variety:replaceable[waterlogged=true] run data modify storage gm4_garden_variety:new placeholder.waterlogged set value true
