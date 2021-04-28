# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from gm4_garden_variety:analyzer/recipes/RECIPE_TYPE/complete

# reset storage
data remove storage gm4_garden_variety:data/trait_lore Lore

# TAG: height
execute if score height gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Shortest","color":"gray","italic":false}]'
execute if score height gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Shorter","color":"gray","italic":false}]'
execute if score height gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Average","color":"gray","italic":false}]'
execute if score height gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Taller","color":"gray","italic":false}]'
execute if score height gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Tallest","color":"gray","italic":false}]'
# TAG: flexibility
execute if score flexibility gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Stiff","color":"gray","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Sturdy","color":"gray","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Average","color":"gray","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Flexible","color":"gray","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Bendy","color":"gray","italic":false}]'
# TAG: foliage
execute if score foliage gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Smallest","color":"gray","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Smaller","color":"gray","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Average","color":"gray","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Larger","color":"gray","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Largest","color":"gray","italic":false}]'
# TAG: fertility
execute if score fertility gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Sterile","color":"gray","italic":false}]'
execute if score fertility gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Average","color":"gray","italic":false}]'
execute if score fertility gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Fertile","color":"gray","italic":false}]'
