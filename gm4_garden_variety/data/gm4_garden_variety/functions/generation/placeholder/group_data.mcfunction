
# load data
function gm4_garden_variety:generation/placeholder/load_data

# capped ends
scoreboard players set $capped gm4_gv_placeholder 0
execute if score $axis gm4_gv_placeholder matches 1 if block ~ ~-1 ~ repeating_command_block if block ~ ~1 ~ repeating_command_block run scoreboard players set $capped gm4_gv_placeholder 1
execute if score $axis gm4_gv_placeholder matches 2 if block ~ ~ ~-1 repeating_command_block if block ~ ~ ~1 repeating_command_block run scoreboard players set $capped gm4_gv_placeholder 1
execute if score $axis gm4_gv_placeholder matches 3 if block ~-1 ~ ~ repeating_command_block if block ~1 ~ ~ repeating_command_block run scoreboard players set $capped gm4_gv_placeholder 1

# surrounded
execute store result score $surrounded gm4_gv_placeholder if block ~-1 ~ ~ repeating_command_block if block ~1 ~ ~ repeating_command_block if block ~ ~-1 ~ repeating_command_block if block ~ ~1 ~ repeating_command_block if block ~ ~ ~-1 repeating_command_block if block ~ ~ ~1 repeating_command_block

# update data
data modify storage gm4_garden_variety:new placeholder set from storage gm4_garden_variety:reference placeholder
execute store result storage gm4_garden_variety:new placeholder.capped int 1 run scoreboard players get $capped gm4_gv_placeholder
execute store result storage gm4_garden_variety:new placeholder.surrounded int 1 run scoreboard players get $surrounded gm4_gv_placeholder
data modify entity @s data.gm4_garden_variety.placeholder set from storage gm4_garden_variety:new placeholder