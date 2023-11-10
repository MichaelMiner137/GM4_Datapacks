
scoreboard players set $block_generation_active gm4_garden_variety 0

execute as @e[type=marker,tag=gm4_gv_generation_placeholder] at @s run function gm4_garden_variety:generation/placeholder/generation/check_number

execute if score $block_generation_active gm4_garden_variety matches 1 run schedule function gm4_garden_variety:generation/placeholder/generation/clock 4t
