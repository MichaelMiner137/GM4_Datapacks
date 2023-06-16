
# create placeholder blocks

execute unless score $thickness.rounded gm4_gv_component matches 1 positioned ^ ^ ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^ ^1 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^ ^2 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute unless score $thickness.rounded gm4_gv_component matches 1 positioned ^ ^3 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place

execute positioned ^1 ^ ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^1 ^1 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^1 ^2 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^1 ^3 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place

execute positioned ^2 ^ ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^2 ^1 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^2 ^2 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^2 ^3 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place

execute unless score $thickness.rounded gm4_gv_component matches 1 positioned ^3 ^ ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^3 ^1 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute positioned ^3 ^2 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
execute unless score $thickness.rounded gm4_gv_component matches 1 positioned ^3 ^3 ^ if block ~ ~ ~ air align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:generation/placeholder/place
