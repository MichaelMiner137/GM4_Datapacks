
# counters
scoreboard players remove #spreader.length.left gm4_gv_component 1
scoreboard players add #spreader.length.current gm4_gv_component 1

# pointer
function gm4_garden_variety:generation/component/spreader/create_pointer

# loop
execute if score #spreader.length.left gm4_gv_component matches 1.. rotated as @s run function gm4_garden_variety:generation/component/spreader/rotate_spreader
