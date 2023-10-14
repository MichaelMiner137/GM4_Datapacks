
# check waterlogged
data modify storage gm4_garden_variety:new placeholder.waterlogged set value false
execute if block ~ ~ ~ water run data modify storage gm4_garden_variety:new placeholder.waterlogged set value true
execute if block ~ ~ ~ #gm4_garden_variety:replaceable[waterlogged=true] run data modify storage gm4_garden_variety:new placeholder.waterlogged set value true
