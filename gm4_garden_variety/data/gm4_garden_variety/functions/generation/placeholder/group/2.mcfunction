
# capped ends
scoreboard players set $capped gm4_gv_placeholder 0
execute if score $axis gm4_gv_placeholder matches 1 if block ~ ~-1 ~ repeating_command_block[facing=down] if block ~ ~1 ~ repeating_command_block[facing=down] run scoreboard players set $capped gm4_gv_placeholder 1
execute if score $axis gm4_gv_placeholder matches 2 if block ~ ~ ~-1 repeating_command_block[facing=down] if block ~ ~ ~1 repeating_command_block[facing=down] run scoreboard players set $capped gm4_gv_placeholder 1
execute if score $axis gm4_gv_placeholder matches 3 if block ~-1 ~ ~ repeating_command_block[facing=down] if block ~1 ~ ~ repeating_command_block[facing=down] run scoreboard players set $capped gm4_gv_placeholder 1

# surrounded
execute store result score $surrounded gm4_gv_placeholder if block ~-1 ~ ~ repeating_command_block[facing=down] if block ~1 ~ ~ repeating_command_block[facing=down] if block ~ ~-1 ~ repeating_command_block[facing=down] if block ~ ~1 ~ repeating_command_block[facing=down] if block ~ ~ ~-1 repeating_command_block[facing=down] if block ~ ~ ~1 repeating_command_block[facing=down]
