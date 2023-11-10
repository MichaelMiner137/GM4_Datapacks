
# track segments
scoreboard players add $stat.placeholder_attempts gm4_gv_generation 4

execute positioned ^ ^ ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/placement/place with storage gm4_garden_variety:macro place_placeholder
execute positioned ^ ^1 ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/placement/place with storage gm4_garden_variety:macro place_placeholder

execute positioned ^1 ^ ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/placement/place with storage gm4_garden_variety:macro place_placeholder
execute positioned ^1 ^1 ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/placement/place with storage gm4_garden_variety:macro place_placeholder
