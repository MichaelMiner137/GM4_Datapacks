
# create placeholder blocks

execute unless score $placeholder.rounded gm4_gv_component matches 1 positioned ^ ^ ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^ ^1 ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute unless score $placeholder.rounded gm4_gv_component matches 1 positioned ^ ^2 ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place

execute positioned ^1 ^ ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^1 ^1 ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^1 ^2 ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place

execute unless score $placeholder.rounded gm4_gv_component matches 1 positioned ^2 ^ ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^2 ^1 ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute unless score $placeholder.rounded gm4_gv_component matches 1 positioned ^2 ^2 ^ if block ~ ~ ~ #gm4_garden_variety:replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place